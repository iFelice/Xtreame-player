.class public final Lc4/e0;
.super Lr/l;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lc4/f0;


# direct methods
.method public constructor <init>(Lc4/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc4/e0;->g:Lc4/f0;

    .line 2
    .line 3
    const/16 p1, 0x14

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lr/l;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc4/e0;->g:Lc4/f0;

    .line 7
    .line 8
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lc4/l0;

    .line 11
    .line 12
    iget-object v1, v1, Lc4/l0;->M:Lc4/h;

    .line 13
    .line 14
    sget-object v2, Lc4/E;->o1:Lc4/D;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v3, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, v0, Lc4/f0;->P:Lc4/e0;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lc4/u1;->n()V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lc4/q1;->H:Lc4/A1;

    .line 32
    .line 33
    iget-object v1, v1, Lc4/A1;->I:Lc4/o;

    .line 34
    .line 35
    invoke-static {v1}, Lc4/A1;->I(Lc4/u1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lc4/o;->m0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bD;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v3, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lc4/l0;

    .line 48
    .line 49
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 50
    .line 51
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 52
    .line 53
    .line 54
    const-string v4, "Populate EES config from database on cache miss. appId"

    .line 55
    .line 56
    iget-object v3, v3, Lc4/T;->T:Lc4/Q;

    .line 57
    .line 58
    invoke-virtual {v3, p1, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, [B

    .line 64
    .line 65
    invoke-virtual {v0, v1, p1}, Lc4/f0;->s([BLjava/lang/String;)Lcom/google/android/gms/internal/measurement/K0;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, p1, v1}, Lc4/f0;->w(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/K0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lr/l;->g()Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    move-object v3, p1

    .line 81
    check-cast v3, Lcom/google/android/gms/internal/measurement/E;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v0}, Lc4/u1;->n()V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-object v1, v0, Lc4/f0;->N:Lr/f;

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lcom/google/android/gms/internal/measurement/K0;

    .line 104
    .line 105
    if-nez v4, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/K0;->q()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    invoke-virtual {v1, p1}, Lr/f;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    invoke-virtual {v1, p1}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Lcom/google/android/gms/internal/measurement/K0;

    .line 131
    .line 132
    invoke-virtual {v0, p1, v1}, Lc4/f0;->w(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/K0;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {v0, p1}, Lc4/f0;->u(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_0
    invoke-virtual {v2}, Lr/l;->g()Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    move-object v3, p1

    .line 148
    check-cast v3, Lcom/google/android/gms/internal/measurement/E;

    .line 149
    .line 150
    :cond_5
    :goto_1
    return-object v3
.end method
