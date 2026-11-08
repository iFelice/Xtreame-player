.class public final Ll3/M0;
.super LR3/d;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Ll3/M0;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const-string p1, "com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl"

    .line 19
    .line 20
    invoke-direct {p0, p1}, LR3/d;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p1, "com.google.android.gms.ads.AdOverlayCreatorImpl"

    .line 25
    .line 26
    invoke-direct {p0, p1}, LR3/d;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string p1, "com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl"

    .line 31
    .line 32
    invoke-direct {p0, p1}, LR3/d;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const-string p1, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    .line 37
    .line 38
    invoke-direct {p0, p1}, LR3/d;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const-string p1, "com.google.android.gms.ads.AdPreloaderRemoteCreatorImpl"

    .line 43
    .line 44
    invoke-direct {p0, p1}, LR3/d;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    const-string p1, "com.google.android.gms.ads.AdLoaderBuilderCreatorImpl"

    .line 49
    .line 50
    invoke-direct {p0, p1}, LR3/d;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ll3/M0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/mc;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Lcom/google/android/gms/internal/ads/mc;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/kc;

    .line 26
    .line 27
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/kc;-><init>(Landroid/os/IBinder;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object v2

    .line 31
    :pswitch_0
    if-nez p1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator"

    .line 35
    .line 36
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/b9;

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    check-cast v2, Lcom/google/android/gms/internal/ads/b9;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/b9;

    .line 48
    .line 49
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-object v2

    .line 53
    :pswitch_1
    if-nez p1, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator"

    .line 57
    .line 58
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/a9;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    move-object v2, v0

    .line 67
    check-cast v2, Lcom/google/android/gms/internal/ads/a9;

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/Y8;

    .line 71
    .line 72
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/Y8;-><init>(Landroid/os/IBinder;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    return-object v2

    .line 76
    :pswitch_2
    if-nez p1, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    const-string v0, "com.google.android.gms.ads.internal.client.IAdPreloaderCreator"

    .line 80
    .line 81
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    instance-of v3, v2, Ll3/Q;

    .line 86
    .line 87
    if-eqz v3, :cond_7

    .line 88
    .line 89
    check-cast v2, Ll3/Q;

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    new-instance v2, Ll3/Q;

    .line 93
    .line 94
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    :goto_3
    return-object v2

    .line 98
    :pswitch_3
    if-nez p1, :cond_8

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator"

    .line 102
    .line 103
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    instance-of v1, v0, Ll3/G;

    .line 108
    .line 109
    if-eqz v1, :cond_9

    .line 110
    .line 111
    move-object v2, v0

    .line 112
    check-cast v2, Ll3/G;

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_9
    new-instance v2, Ll3/G;

    .line 116
    .line 117
    invoke-direct {v2, p1}, Ll3/G;-><init>(Landroid/os/IBinder;)V

    .line 118
    .line 119
    .line 120
    :goto_4
    return-object v2

    .line 121
    :pswitch_4
    if-nez p1, :cond_a

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_a
    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator"

    .line 125
    .line 126
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    instance-of v3, v2, Ll3/f0;

    .line 131
    .line 132
    if-eqz v3, :cond_b

    .line 133
    .line 134
    check-cast v2, Ll3/f0;

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_b
    new-instance v2, Ll3/f0;

    .line 138
    .line 139
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    :goto_5
    return-object v2

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
