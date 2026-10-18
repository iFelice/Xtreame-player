.class public final Lcom/google/android/gms/internal/measurement/g0;
.super Lcom/google/android/gms/internal/measurement/i0;
.source "SourceFile"


# instance fields
.field public final synthetic K:I

.field public final synthetic L:Ljava/lang/Object;

.field public final synthetic M:Ljava/lang/Object;

.field public final synthetic N:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/H;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/g0;->K:I

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/g0;->L:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/g0;->N:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g0;->M:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/g0;->K:I

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/g0;->L:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/g0;->N:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g0;->M:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/g0;->K:I

    .line 3
    const-string v1, "Error with data collection. Data lost."

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/g0;->L:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/g0;->N:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g0;->M:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/m0;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/H;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/g0;->K:I

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/g0;->L:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/g0;->N:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g0;->M:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/g0;->K:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g0;->M:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/l0;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/g0;->L:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Landroid/app/Activity;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/g0;->N:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lcom/google/android/gms/internal/measurement/H;

    .line 31
    .line 32
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/i0;->H:J

    .line 33
    .line 34
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/K;->onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Lcom/google/android/gms/internal/measurement/M;J)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g0;->L:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/os/Bundle;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    new-instance v1, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "com.google.app_measurement.screen_service"

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    instance-of v3, v0, Landroid/os/Bundle;

    .line 62
    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    check-cast v0, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g0;->M:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lcom/google/android/gms/internal/measurement/l0;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/g0;->N:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Landroid/app/Activity;

    .line 86
    .line 87
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/i0;->H:J

    .line 88
    .line 89
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/K;->onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;J)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g0;->M:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/g0;->L:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/g0;->N:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Lcom/google/android/gms/internal/measurement/H;

    .line 113
    .line 114
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/K;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g0;->M:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lcom/google/android/gms/internal/measurement/m0;

    .line 121
    .line 122
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g0;->N:Ljava/lang/Object;

    .line 128
    .line 129
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/g0;->L:Ljava/lang/Object;

    .line 130
    .line 131
    move-object v4, v3

    .line 132
    check-cast v4, Ljava/lang/String;

    .line 133
    .line 134
    new-instance v5, LR3/b;

    .line 135
    .line 136
    invoke-direct {v5, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    new-instance v6, LR3/b;

    .line 140
    .line 141
    invoke-direct {v6, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    new-instance v7, LR3/b;

    .line 145
    .line 146
    invoke-direct {v7, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    const/4 v3, 0x5

    .line 150
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/K;->logHealthData(ILjava/lang/String;LR3/a;LR3/a;LR3/a;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/g0;->K:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g0;->N:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/H;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/H;->V0(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
