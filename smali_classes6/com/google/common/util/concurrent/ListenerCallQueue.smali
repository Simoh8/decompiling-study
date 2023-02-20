.class final Lcom/google/common/util/concurrent/ListenerCallQueue;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;,
        Lcom/google/common/util/concurrent/ListenerCallQueue$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue",
            "<T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    .line 61
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private enqueueHelper(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V
    .locals 4
    .param p2, "label"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    .local p1, "event":Lcom/google/common/util/concurrent/ListenerCallQueue$Event;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<TL;>;"
    const-string v1, "event"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "label"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;

    .line 107
    .local v0, "queue":Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue<TL;>;"
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->add(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    .end local v0    # "queue":Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue<TL;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    new-instance v1, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public dispatch()V
    .locals 2

    .prologue
    .line 119
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->dispatch()V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    .local p1, "event":Lcom/google/common/util/concurrent/ListenerCallQueue$Event;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<TL;>;"
    invoke-direct {p0, p1, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueueHelper(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public enqueue(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/String;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    .local p1, "event":Lcom/google/common/util/concurrent/ListenerCallQueue$Event;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<TL;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue;->enqueueHelper(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V

    .line 100
    return-void
.end method
