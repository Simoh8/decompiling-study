.class abstract Lcom/google/common/collect/HashBiMap$View;
.super Ljava/util/AbstractSet;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/HashBiMap;

    .prologue
    .line 655
    .local p0, "this":Lcom/google/common/collect/HashBiMap$View;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.View<TT;>;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$View;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 714
    .local p0, "this":Lcom/google/common/collect/HashBiMap$View;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.View<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$View;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->clear()V

    .line 715
    return-void
.end method

.method abstract forEntry(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lcom/google/common/collect/HashBiMap$View;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.View<TT;>;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$View$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$View$1;-><init>(Lcom/google/common/collect/HashBiMap$View;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 709
    .local p0, "this":Lcom/google/common/collect/HashBiMap$View;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.View<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$View;->this$0:Lcom/google/common/collect/HashBiMap;

    iget v0, v0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method
