.class abstract Lcom/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization;
.super Ljava/lang/Object;
.source "GwtFluentFutureCatchingSpecialization.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization;, "Lcom/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
