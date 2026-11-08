.class public final Lcom/google/android/gms/internal/ads/Kr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pq;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/rq;

.field public final b:Lcom/google/android/gms/internal/ads/vq;

.field public final c:Lcom/google/android/gms/internal/ads/Kw;

.field public final d:Lcom/google/android/gms/internal/ads/jC;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/jC;Lcom/google/android/gms/internal/ads/rq;Lcom/google/android/gms/internal/ads/vq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kr;->c:Lcom/google/android/gms/internal/ads/Kw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Kr;->d:Lcom/google/android/gms/internal/ads/jC;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Kr;->b:Lcom/google/android/gms/internal/ads/vq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Kr;->a:Lcom/google/android/gms/internal/ads/rq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)LD4/b;
    .locals 13

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/Ov;->t:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Kr;->a:Lcom/google/android/gms/internal/ads/rq;

    .line 20
    .line 21
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/rq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/sq;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    nop

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_1
    const/4 v1, 0x3

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/ar;

    .line 35
    .line 36
    const-string p2, "Unable to instantiate mediation adapter class."

    .line 37
    .line 38
    invoke-direct {p1, v1, p2}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/te;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v3, LJ2/t;

    .line 52
    .line 53
    invoke-direct {v3, v0, v2}, LJ2/t;-><init>(Lcom/google/android/gms/internal/ads/sq;Lcom/google/android/gms/internal/ads/te;)V

    .line 54
    .line 55
    .line 56
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/Gj;

    .line 57
    .line 58
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/Gj;->i2(LJ2/t;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/Ov;->M:Z

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 66
    .line 67
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v3, Lcom/google/android/gms/internal/ads/Yv;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 72
    .line 73
    iget-object v3, v3, Ll3/b1;->S:Landroid/os/Bundle;

    .line 74
    .line 75
    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    if-nez v5, :cond_2

    .line 86
    .line 87
    new-instance v5, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    const-string v3, "render_test_ad_label"

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    :cond_3
    sget-object v8, Lcom/google/android/gms/internal/ads/Iw;->V:Lcom/google/android/gms/internal/ads/Iw;

    .line 106
    .line 107
    new-instance v3, Lcom/google/android/gms/internal/ads/Jr;

    .line 108
    .line 109
    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Jr;-><init>(Lcom/google/android/gms/internal/ads/Kr;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)V

    .line 110
    .line 111
    .line 112
    new-instance v4, Lcom/google/android/gms/internal/ads/he;

    .line 113
    .line 114
    const/16 v5, 0x1d

    .line 115
    .line 116
    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/ads/he;-><init>(Ljava/lang/Object;I)V

    .line 117
    .line 118
    .line 119
    new-instance v3, Lcom/google/android/gms/internal/ads/rs;

    .line 120
    .line 121
    sget-object v10, Lcom/google/android/gms/internal/ads/Gw;->d:Lcom/google/android/gms/internal/ads/fC;

    .line 122
    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Kr;->d:Lcom/google/android/gms/internal/ads/jC;

    .line 128
    .line 129
    check-cast v5, Lcom/google/android/gms/internal/ads/IB;

    .line 130
    .line 131
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    const/4 v9, 0x0

    .line 136
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Kr;->c:Lcom/google/android/gms/internal/ads/Kw;

    .line 137
    .line 138
    move-object v6, v3

    .line 139
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/rs;-><init>(Lcom/google/android/gms/internal/ads/Gw;Ljava/lang/Object;Ljava/lang/String;LD4/b;Ljava/util/List;LD4/b;)V

    .line 140
    .line 141
    .line 142
    sget-object v4, Lcom/google/android/gms/internal/ads/Iw;->W:Lcom/google/android/gms/internal/ads/Iw;

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/rs;->g(Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    new-instance v4, Lcom/google/android/gms/internal/ads/sm;

    .line 149
    .line 150
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/sm;-><init>(ILD4/b;)V

    .line 151
    .line 152
    .line 153
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 154
    .line 155
    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/ads/rs;->n(Lcom/google/android/gms/internal/ads/RB;Lcom/google/android/gms/internal/ads/jC;)Lcom/google/android/gms/internal/ads/rs;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    sget-object v2, Lcom/google/android/gms/internal/ads/Iw;->X:Lcom/google/android/gms/internal/ads/Iw;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rs;->g(Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v2, Lcom/google/android/gms/internal/ads/Jr;

    .line 166
    .line 167
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Jr;-><init>(Lcom/google/android/gms/internal/ads/Kr;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Ov;->t:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method
