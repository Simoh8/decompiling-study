.class final Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$Param;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedNamedParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/afwsamples/testdpc/util/Flags$Param",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final innerParam:Lcom/afwsamples/testdpc/util/Flags$NamedParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$NamedParam",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/Flags$NamedParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$NamedParam",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam<TT;>;"
    .local p1, "innerParam":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;->innerParam:Lcom/afwsamples/testdpc/util/Flags$NamedParam;

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/Flags$NamedParam;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/util/Flags$NamedParam;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 215
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam<TT;>;"
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;-><init>(Lcom/afwsamples/testdpc/util/Flags$NamedParam;)V

    return-void
.end method


# virtual methods
.method public acceptsMultipleValues()Z
    .locals 1

    .prologue
    .line 234
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;->innerParam:Lcom/afwsamples/testdpc/util/Flags$NamedParam;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/util/Flags$NamedParam;->dataType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isOptional()Z
    .locals 1

    .prologue
    .line 229
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isOrdinal()Z
    .locals 1

    .prologue
    .line 224
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;->innerParam:Lcom/afwsamples/testdpc/util/Flags$NamedParam;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/util/Flags$NamedParam;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
