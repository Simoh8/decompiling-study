.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$76;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$76;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$76;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$null$137$PolicyManagementFragment(Ljava/lang/Exception;)V

    return-void
.end method
