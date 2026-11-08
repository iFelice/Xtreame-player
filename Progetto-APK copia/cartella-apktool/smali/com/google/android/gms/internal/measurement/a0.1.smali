.class public final Lcom/google/android/gms/internal/measurement/a0;
.super Lcom/google/android/gms/internal/measurement/i0;
.source "SourceFile"


# instance fields
.field public final synthetic K:Ljava/lang/String;

.field public final synthetic L:Ljava/lang/String;

.field public final synthetic M:Landroid/content/Context;

.field public final synthetic N:Landroid/os/Bundle;

.field public final synthetic O:Lcom/google/android/gms/internal/measurement/m0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/m0;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a0;->K:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a0;->L:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/a0;->M:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/a0;->N:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a0;->O:Lcom/google/android/gms/internal/measurement/m0;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/i0;-><init>(Lcom/google/android/gms/internal/measurement/m0;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "com.google.android.gms.measurement.dynamite"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/a0;->O:Lcom/google/android/gms/internal/measurement/m0;

    .line 8
    .line 9
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/a0;->K:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/a0;->L:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 14
    .line 15
    .line 16
    if-eqz v6, :cond_0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    :try_start_1
    const-string v7, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 21
    .line 22
    const-class v8, Lcom/google/android/gms/internal/measurement/m0;

    .line 23
    .line 24
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-static {v7, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    nop

    .line 33
    const/4 v7, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 36
    :goto_1
    const/4 v8, 0x0

    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    :try_start_2
    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/m0;->a:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v16, v0

    .line 42
    .line 43
    move-object/from16 v17, v6

    .line 44
    .line 45
    move-object v15, v7

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    move-object v15, v8

    .line 48
    move-object/from16 v16, v15

    .line 49
    .line 50
    move-object/from16 v17, v16

    .line 51
    .line 52
    :goto_2
    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/a0;->M:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v6}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 55
    .line 56
    .line 57
    :try_start_3
    sget-object v0, LS3/c;->c:LS3/g;

    .line 58
    .line 59
    invoke-static {v6, v0, v2}, LS3/c;->c(Landroid/content/Context;LS3/g;Ljava/lang/String;)LS3/c;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v7, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 64
    .line 65
    invoke-virtual {v0, v7}, LS3/c;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/J;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/K;

    .line 70
    .line 71
    .line 72
    move-result-object v8
    :try_end_3
    .catch LS3/a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 73
    goto :goto_3

    .line 74
    :catch_1
    move-exception v0

    .line 75
    :try_start_4
    invoke-virtual {v5, v0, v4, v3}, Lcom/google/android/gms/internal/measurement/m0;->a(Ljava/lang/Exception;ZZ)V

    .line 76
    .line 77
    .line 78
    :goto_3
    iput-object v8, v5, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 79
    .line 80
    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/m0;->a:Ljava/lang/String;

    .line 85
    .line 86
    const-string v2, "Failed to connect to measurement client."

    .line 87
    .line 88
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catch_2
    move-exception v0

    .line 93
    goto :goto_5

    .line 94
    :cond_2
    invoke-static {v6, v2}, LS3/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v6, v2, v3}, LS3/c;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-ge v2, v0, :cond_3

    .line 107
    .line 108
    const/4 v14, 0x1

    .line 109
    goto :goto_4

    .line 110
    :cond_3
    const/4 v14, 0x0

    .line 111
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/measurement/V;

    .line 112
    .line 113
    int-to-long v12, v7

    .line 114
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/a0;->N:Landroid/os/Bundle;

    .line 115
    .line 116
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Cw;->K(Landroid/content/Context;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v19

    .line 120
    const-wide/32 v10, 0x1d0da

    .line 121
    .line 122
    .line 123
    move-object v9, v0

    .line 124
    move-object/from16 v18, v2

    .line 125
    .line 126
    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/measurement/V;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, v5, Lcom/google/android/gms/internal/measurement/m0;->f:Lcom/google/android/gms/internal/measurement/K;

    .line 130
    .line 131
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    new-instance v5, LR3/b;

    .line 135
    .line 136
    invoke-direct {v5, v6}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/i0;->G:J

    .line 140
    .line 141
    invoke-interface {v2, v5, v0, v6, v7}, Lcom/google/android/gms/internal/measurement/K;->initialize(LR3/a;Lcom/google/android/gms/internal/measurement/V;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :goto_5
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/a0;->O:Lcom/google/android/gms/internal/measurement/m0;

    .line 146
    .line 147
    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/internal/measurement/m0;->a(Ljava/lang/Exception;ZZ)V

    .line 148
    .line 149
    .line 150
    return-void
.end method
