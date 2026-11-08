.class public Landroidx/leanback/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS3/b;
.implements Lcom/google/android/gms/internal/ads/rk;
.implements Lcom/google/android/gms/internal/ads/dk;
.implements Lcom/google/android/gms/internal/ads/nv;
.implements Lcom/google/android/gms/internal/pal/d4;


# instance fields
.field public final synthetic G:I

.field public H:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 17
    iput v0, p0, Landroidx/leanback/widget/j;->G:I

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Unsupported key length: "

    .line 19
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/j;->H:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/leanback/widget/j;->G:I

    iput p1, p0, Landroidx/leanback/widget/j;->H:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    iput p3, p0, Landroidx/leanback/widget/j;->G:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/leanback/widget/j;->H:I

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/leanback/widget/j;->H:I

    return-void
.end method

.method public constructor <init>(ILa/r;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0xc

    .line 5
    iput p2, p0, Landroidx/leanback/widget/j;->G:I

    .line 6
    iput p1, p0, Landroidx/leanback/widget/j;->H:I

    return-void
.end method

.method public constructor <init>(ILandroidx/leanback/widget/i;)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/j;->G:I

    const/16 p2, 0x10

    if-eq p1, p2, :cond_0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/leanback/widget/j;->H:I

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0xb

    .line 10
    iput p2, p0, Landroidx/leanback/widget/j;->G:I

    .line 11
    iput p1, p0, Landroidx/leanback/widget/j;->H:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/leanback/widget/j;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 13
    iput v0, p0, Landroidx/leanback/widget/j;->G:I

    .line 14
    iget p1, p1, Landroidx/leanback/widget/j;->H:I

    .line 15
    iput p1, p0, Landroidx/leanback/widget/j;->H:I

    return-void
.end method


# virtual methods
.method public final a([B[B[B[B)[B
    .locals 1

    .line 1
    array-length p4, p1

    .line 2
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    .line 3
    .line 4
    if-ne p4, v0, :cond_0

    .line 5
    .line 6
    new-instance p4, Lcom/google/android/gms/internal/pal/Q3;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p4, p1, v0}, Lcom/google/android/gms/internal/pal/Q3;-><init>([BZ)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/internal/pal/Q3;->a([B[B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 18
    .line 19
    const-string p2, "Unexpected key length: "

    .line 20
    .line 21
    invoke-static {p2, p4}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final l(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 1
    iget p1, p0, Landroidx/leanback/widget/j;->H:I

    .line 2
    .line 3
    return p1
.end method

.method public final zza()I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/j;->G:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    return v0

    .line 2
    :pswitch_0
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    return v0

    .line 3
    :pswitch_1
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    goto :goto_0

    :cond_3
    const/16 v0, 0xc

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    goto :goto_0

    :cond_5
    const/16 v0, 0xa

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/j;->G:I

    packed-switch v0, :pswitch_data_0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    .line 5
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    check-cast p1, Lcom/google/android/gms/internal/ads/fd;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    return-void

    .line 9
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/xd;

    .line 10
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/xd;->d(I)V

    return-void

    .line 11
    :pswitch_1
    check-cast p1, Ln3/m;

    .line 12
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    invoke-interface {p1, v0}, Ln3/m;->r1(I)V

    return-void

    .line 13
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/av;

    .line 14
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/av;->r1(I)V

    return-void

    .line 15
    :pswitch_3
    check-cast p1, Ln3/m;

    .line 16
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    invoke-interface {p1, v0}, Ln3/m;->r1(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()[B
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/j;->H:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->j:[B

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 15
    .line 16
    const-string v1, "Could not determine HPKE AEAD ID"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->i:[B

    .line 23
    .line 24
    return-object v0
.end method
