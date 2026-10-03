.class public final Lcom/google/android/gms/internal/ads/V7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dk;
.implements Lcom/google/android/gms/internal/ads/rk;
.implements Lcom/google/android/gms/internal/ads/nv;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/V7;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/V7;->H:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/V7;->I:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/V7;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/V7;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/V7;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p1, "Version is null or empty"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p1, "Name is null or empty"

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/V7;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ll3/U;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/V7;->H:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/V7;->I:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Ll3/U;->G2(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/Dk;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/V7;->H:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/V7;->I:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Dk;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p1, Lg3/b;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/V7;->H:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/V7;->I:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Lg3/b;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/hs;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/V7;->H:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/V7;->I:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/hs;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
