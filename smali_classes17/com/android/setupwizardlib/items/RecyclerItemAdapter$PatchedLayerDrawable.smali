.class Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RecyclerItemAdapter.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatchedLayerDrawable"
.end annotation


# direct methods
.method constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 239
    return-void
.end method


# virtual methods
.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 244
    .local v0, "superHasPadding":Z
    if-eqz v0, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
