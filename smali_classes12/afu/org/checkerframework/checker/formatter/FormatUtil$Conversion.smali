.class Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafu/org/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Conversion"
.end annotation


# instance fields
.field private final cath:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

.field private final index:I


# direct methods
.method public constructor <init>(CI)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "index"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p2, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->index:I

    .line 28
    invoke-static {p1}, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;->fromConversionChar(C)Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    iput-object v0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->cath:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 29
    return-void
.end method


# virtual methods
.method category()Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->cath:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method index()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->index:I

    return v0
.end method
