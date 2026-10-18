.class public final synthetic Lcom/google/android/gms/internal/ads/sm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LD4/b;


# direct methods
.method public synthetic constructor <init>(ILD4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/sm;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sm;->b:LD4/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LD4/b;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/sm;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sm;->b:LD4/b;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    return-object v2

    .line 10
    :pswitch_0
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/qr;

    .line 14
    .line 15
    const-string v0, "Retrieve required value in native ad response failed."

    .line 16
    .line 17
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    return-object v2

    .line 25
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/qr;

    .line 31
    .line 32
    const-string v0, "Retrieve Web View from image ad response failed."

    .line 33
    .line 34
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/qr;

    .line 50
    .line 51
    const-string v0, "Retrieve video view in html5 ad response failed."

    .line 52
    .line 53
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
