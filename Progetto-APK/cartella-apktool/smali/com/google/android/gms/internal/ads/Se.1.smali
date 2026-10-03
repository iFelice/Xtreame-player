.class public final synthetic Lcom/google/android/gms/internal/ads/Se;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/We;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/We;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Se;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Se;->H:Lcom/google/android/gms/internal/ads/We;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Se;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Se;->H:Lcom/google/android/gms/internal/ads/We;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->g()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->d()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :pswitch_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ge;->K:Lcom/google/android/gms/internal/ads/Fe;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    .line 38
    .line 39
    sget-object v2, Lo3/O;->l:Lo3/J;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v3, 0xfa

    .line 45
    .line 46
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/google/android/gms/internal/ads/Ee;

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/Ee;-><init>(Lcom/google/android/gms/internal/ads/Ge;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void

    .line 59
    :pswitch_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->e()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void

    .line 69
    :pswitch_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->i()V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void

    .line 79
    :pswitch_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/De;->H:Lcom/google/android/gms/internal/ads/Re;

    .line 80
    .line 81
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Re;->e:Z

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget v2, v0, Lcom/google/android/gms/internal/ads/Re;->f:F

    .line 89
    .line 90
    :goto_0
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Re;->c:Z

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    move v3, v2

    .line 95
    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 100
    .line 101
    if-eqz v0, :cond_8

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/aL;->j(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, ""

    .line 109
    .line 110
    invoke-static {v1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_7
    const-string v0, "Trying to set volume before player is initialized."

    .line 115
    .line 116
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_8
    :goto_1
    return-void

    .line 120
    :pswitch_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->f()V

    .line 127
    .line 128
    .line 129
    :cond_9
    return-void

    .line 130
    :pswitch_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    .line 131
    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    check-cast v0, Lcom/google/android/gms/internal/ads/Ge;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ge;->h()V

    .line 137
    .line 138
    .line 139
    :cond_a
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
