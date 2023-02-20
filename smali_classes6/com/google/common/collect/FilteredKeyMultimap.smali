.class Lcom/google/common/collect/FilteredKeyMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "FilteredKeyMultimap.java"

# interfaces
.implements Lcom/google/common/collect/FilteredMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/FilteredKeyMultimap$Entries;,
        Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;,
        Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/FilteredMultimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final keyPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<-TK;>;"
        }
    .end annotation
.end field

.field final unfiltered:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    .local p1, "unfiltered":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    .local p2, "keyPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    iput-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    .line 45
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    iput-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    .line 46
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 93
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    move-object v0, p1

    .line 72
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    .line 74
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->filterKeys(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/FilteredKeyMultimap$Entries;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredKeyMultimap$Entries;-><init>(Lcom/google/common/collect/FilteredKeyMultimap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createKeys()Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->filter(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/FilteredMultimapValues;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredMultimapValues;-><init>(Lcom/google/common/collect/FilteredMultimap;)V

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public entryPredicate()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    instance-of v0, v0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingSet;

    invoke-direct {v0, p1}, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingSet;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;

    invoke-direct {v0, p1}, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->unmodifiableEmptyCollection()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 60
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    const/4 v1, 0x0

    .line 61
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 62
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 63
    goto :goto_0

    .line 64
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    return v1
.end method

.method public unfiltered()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method unmodifiableEmptyCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/google/common/collect/FilteredKeyMultimap;, "Lcom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    instance-of v0, v0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method
