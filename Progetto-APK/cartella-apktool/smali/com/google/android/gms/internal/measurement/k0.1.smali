.class public final Lcom/google/android/gms/internal/measurement/k0;
.super Lcom/google/android/gms/internal/measurement/i0;
.source "SourceFile"


# instance fields
.field public final synthetic K:I

.field public final synthetic L:Landroid/app/Activity;

.field public final synthetic M:Lcom/google/android/gms/internal/measurement/l0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/app/Activity;I)V
    .locals 2

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/measurement/k0;->K:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p3, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq p3, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p3, v1, :cond_0

    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 22
    .line 23
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 46
    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 58
    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 70
    .line 71
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k0;->K:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/i0;->H:J

    .line 24
    .line 25
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/i0;->H:J

    .line 47
    .line 48
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/i0;->H:J

    .line 70
    .line 71
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/i0;->H:J

    .line 93
    .line 94
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k0;->M:Lcom/google/android/gms/internal/measurement/l0;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k0;->L:Landroid/app/Activity;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/i0;->H:J

    .line 116
    .line 117
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
