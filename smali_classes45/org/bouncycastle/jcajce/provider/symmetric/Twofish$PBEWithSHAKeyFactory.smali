.class public Lorg/bouncycastle/jcajce/provider/symmetric/Twofish$PBEWithSHAKeyFactory;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Twofish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAKeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v3, 0x1

    const-string v1, "PBEwithSHAandTwofish-CBC"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/16 v6, 0x100

    const/16 v7, 0x80

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    return-void
.end method
