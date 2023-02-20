.class final Lcom/google/common/collect/Collections2$OrderedPermutationCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OrderedPermutationCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field final inputList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    .local p1, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 424
    invoke-static {p2, p1}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    .line 425
    iput-object p2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->comparator:Ljava/util/Comparator;

    .line 426
    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, p2}, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->calculateSize(Ljava/util/List;Ljava/util/Comparator;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->size:I

    .line 427
    return-void
.end method

.method private static calculateSize(Ljava/util/List;Ljava/util/Comparator;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "sortedInputList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const v4, 0x7fffffff

    .line 440
    const/4 v2, 0x1

    .line 441
    .local v2, "permutations":I
    const/4 v1, 0x1

    .line 442
    .local v1, "n":I
    const/4 v3, 0x1

    .line 443
    .local v3, "r":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 444
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 445
    .local v0, "comparison":I
    if-gez v0, :cond_0

    .line 447
    invoke-static {v1, v3}, Lcom/google/common/math/IntMath;->binomial(II)I

    move-result v5

    invoke-static {v2, v5}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v2

    .line 448
    const/4 v3, 0x0

    .line 449
    if-ne v2, v4, :cond_0

    .line 456
    .end local v0    # "comparison":I
    :goto_1
    return v4

    .line 453
    .restart local v0    # "comparison":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 454
    add-int/lit8 v3, v3, 0x1

    .line 455
    goto :goto_0

    .line 456
    .end local v0    # "comparison":I
    :cond_1
    invoke-static {v1, v3}, Lcom/google/common/math/IntMath;->binomial(II)I

    move-result v4

    invoke-static {v2, v4}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 476
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 477
    check-cast v0, Ljava/util/List;

    .line 478
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v0}, Lcom/google/common/collect/Collections2;->access$000(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    .line 480
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 466
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    new-instance v0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 461
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    .local p0, "this":Lcom/google/common/collect/Collections2$OrderedPermutationCollection;, "Lcom/google/common/collect/Collections2$OrderedPermutationCollection<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orderedPermutationCollection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationCollection;->inputList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
