.class public final LB0/r;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LD0/f;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LB0/r;->a:I

    .line 2
    invoke-direct {p0, p1, v0}, LB0/r;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/GL;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, LB0/r;->a:I

    .line 4
    iput-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 5
    iput p2, p0, LB0/r;->a:I

    iput-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 1
    iget p1, p0, LB0/r;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/GL;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/GL;->a:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/GL;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/EL;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, LB0/r;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/GL;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/GL;->b(Lcom/google/android/gms/internal/ads/EL;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, LD0/f;

    .line 31
    .line 32
    iget-object v0, p1, LD0/f;->a:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v1, p1, LD0/f;->i:Lm0/d;

    .line 35
    .line 36
    iget-object v2, p1, LD0/f;->h:Lf/S;

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, LD0/d;->c(Landroid/content/Context;Lm0/d;Lf/S;)LD0/d;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, LD0/f;->a(LD0/d;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    iget-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, LU4/b;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, LU4/b;->b0()Z

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    throw p1

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 5

    .line 1
    iget v0, p0, LB0/r;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LB0/r;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/GL;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 12
    .line 13
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 14
    .line 15
    array-length v2, p1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, p1, v3

    .line 20
    .line 21
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lcom/google/android/gms/internal/ads/GL;

    .line 30
    .line 31
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    iget-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lcom/google/android/gms/internal/ads/GL;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/GL;->a:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/GL;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 44
    .line 45
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/EL;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/GL;->b(Lcom/google/android/gms/internal/ads/EL;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, LB0/r;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, LD0/f;

    .line 58
    .line 59
    iget-object v0, v0, LD0/f;->h:Lf/S;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lp0/M;->l([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, LD0/f;

    .line 70
    .line 71
    iput-object v1, p1, LD0/f;->h:Lf/S;

    .line 72
    .line 73
    :cond_2
    iget-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, LD0/f;

    .line 76
    .line 77
    iget-object v0, p1, LD0/f;->a:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v1, p1, LD0/f;->i:Lm0/d;

    .line 80
    .line 81
    iget-object v2, p1, LD0/f;->h:Lf/S;

    .line 82
    .line 83
    invoke-static {v0, v1, v2}, LD0/d;->c(Landroid/content/Context;Lm0/d;Lf/S;)LD0/d;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, LD0/f;->a(LD0/d;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_1
    iget-object p1, p0, LB0/r;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, LU4/b;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, LU4/b;->b0()Z

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
