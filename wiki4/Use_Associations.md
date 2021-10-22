-   **Table of contents**
-   [How To Use Associations](#How-To-Use-Associations)
    -   [Creating Associations](#Creating-Associations)
    -   [Retrieving art::Assns from the art::Event](#Retrieving-artAssns-from-the-artEvent)

How To Use Associations[¶](#How-To-Use-Associations)
====================================================

[Associations](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Inter-Product_References#The-association-collection-Assns) are a way to make references between two data objects stored in an art::Event. LArSoft provides a set of in-line functions to create associations and retrieve them from the art::Event. Rather than repeat information that is in the art wiki, please read the [art information on associations](https://cdcvs.fnal.gov/redmine/projects/art/wiki/Inter-Product_References) before proceeding.


Creating Associations[¶](#Creating-Associations)
------------------------------------------------

To avoid having to do multiple steps in LArSoft, CreateAssn was developed, but it was confusing to the users so the use of it is no longer recommended. We have [PtrMaker utility](https://cdcvs.fnal.gov/redmine/projects/art/wiki/The_PtrMaker_utility) now available in *art*, which provides functions to create one-to-one and one-to-many associations. The input parameters can vary slightly depending on what is needed. One version allows the creation of pointers for new data products and another version allows the creation of pointers for existing data products.

Typically, one would use a one-to-many relation. \
An example of making an art::Assns can be seen by searching the source code in LArSoft via doxygen.

Creating an association between two data products is as simple as getting *art* pointers and use:

    assns->addSingle(ptrA, ptrB);

\
As creating *art* pointers to new data products may be complicated, the following example shows the use of art::PtrMaker.

To create an association in a producer module:

1.  declare that the `art::EDProducer` will produce the desired `art::Assns`, as seen in the this construction:\

          ClusterCheater::ClusterCheater(fhicl::ParameterSet const& pset)
          {
            this->reconfigure(pset);

            produces< std::vector<recob::Cluster> >();
            produces< art::Assns<recob::Cluster, recob::Hit> >();
          }

2.  in the `produces()` method define the association object as:\

          // collection of new clusters:
          auto clusters = std::make_unique<std::vector<recob::Cluster>>();
          // associations of clusters to hits:
          auto assns = std::make_unique<art::Assns<recob::Cluster, recob::Hit>>();

    (`make_unique()` is in the standard C++ header `<memory>`)

3.  prepare the `PtrMaker` object which will create pointers to clusters as needed:\

        art::PtrMaker<recob::Cluster> makeClusterPtr(event, *this);

4.  add the cluster, then the cluster-to-hit associations, one by one;\
    **After** adding the cluster to the collection that is being produced, we make use of the CreateAssn method:\

          // transfer the cluster we created into the cluster collection
          clusters->push_back(std::move(cluster));
          // create a art pointer to that cluster (now the last one in the collection)
          art::Ptr<recob::Cluster> clusterPtr = makeClusterPtr(clusters->size() - 1);
          // add an association to each of the hits in the cluster hit list
          for (art::Ptr<recob::Hit> const& hitPtr: clusterHits)
            assns->addSingle(clusterPtr, hitPtr);

5.  in the end, `put()` the associations into the event:\

          evt.put(assns);


Retrieving `art::Assns` from the `art::Event`[¶](#Retrieving-artAssns-from-the-artEvent)
----------------------------------------------------------------------------------------

There are many ways to access the associated information.\
The most generic one, but possibly slow, is [the use of FindOneP/FindManyP/FindMany helpers](/redmine/projects/art/wiki/Inter-Product_References#FindOne-FindOneP-and-FindMany-FindManyP).
