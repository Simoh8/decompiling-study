.class final Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;
.super Ljava/lang/Throwable;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyServiceManagerWarning"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/ServiceManager$1;

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;-><init>()V

    return-void
.end method
