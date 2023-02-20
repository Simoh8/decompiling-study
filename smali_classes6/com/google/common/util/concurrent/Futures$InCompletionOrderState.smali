.class final Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InCompletionOrderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile delegateIndex:I

.field private final incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private shouldInterrupt:Z

.field private wasCancelled:Z


# direct methods
.method private constructor <init>([Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    .local p1, "inputFutures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<+TT;>;"
    const/4 v1, 0x0

    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1228
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    .line 1229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    .line 1232
    iput v1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 1235
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1237
    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/Futures$1;)V
    .locals 0
    .param p1, "x0"    # [Lcom/google/common/util/concurrent/ListenableFuture;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/Futures$1;

    .prologue
    .line 1224
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;-><init>([Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p1, "x1"    # Lcom/google/common/collect/ImmutableList;
    .param p2, "x2"    # I

    .prologue
    .line 1224
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordInputCompletion(Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p1, "x1"    # Z

    .prologue
    .line 1224
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordOutputCancellation(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)[Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private recordCompletion()V
    .locals 5

    .prologue
    .line 1269
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    if-eqz v1, :cond_1

    .line 1270
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1271
    .local v0, "toCancel":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    if-eqz v0, :cond_0

    .line 1272
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    invoke-interface {v0, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 1270
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1276
    .end local v0    # "toCancel":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :cond_1
    return-void
.end method

.method private recordInputCompletion(Lcom/google/common/collect/ImmutableList;I)V
    .locals 4
    .param p2, "inputFutureIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/AbstractFuture",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    .local p1, "delegates":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/util/concurrent/AbstractFuture<TT;>;>;"
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    aget-object v1, v2, p2

    .line 1253
    .local v1, "inputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TT;>;"
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v3, 0x0

    aput-object v3, v2, p2

    .line 1254
    iget v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1255
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1256
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordCompletion()V

    .line 1258
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 1266
    :goto_1
    return-void

    .line 1254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1265
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    iput v2, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    goto :goto_1
.end method

.method private recordOutputCancellation(Z)V
    .locals 1
    .param p1, "interruptIfRunning"    # Z

    .prologue
    .line 1240
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    .line 1243
    if-nez p1, :cond_0

    .line 1244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    .line 1246
    :cond_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordCompletion()V

    .line 1247
    return-void
.end method
