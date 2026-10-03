.class public final Lcom/google/android/gms/internal/ads/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Lcom/google/android/gms/internal/ads/Mi;

.field public final f:Lcom/google/android/gms/internal/ads/jw;

.field public final g:Lcom/google/android/gms/internal/ads/Yv;

.field public final h:Lo3/L;

.field public final i:Lcom/google/android/gms/internal/ads/Cn;

.field public final j:Lcom/google/android/gms/internal/ads/Qi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/at;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Mi;Lcom/google/android/gms/internal/ads/jw;Lcom/google/android/gms/internal/ads/Yv;Lcom/google/android/gms/internal/ads/Cn;Lcom/google/android/gms/internal/ads/Qi;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/at;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/at;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/at;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/at;->e:Lcom/google/android/gms/internal/ads/Mi;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/at;->f:Lcom/google/android/gms/internal/ads/jw;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/at;->g:Lcom/google/android/gms/internal/ads/Yv;

    .line 15
    .line 16
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 17
    .line 18
    iget-object p1, p1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/at;->h:Lo3/L;

    .line 25
    .line 26
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/at;->i:Lcom/google/android/gms/internal/ads/Cn;

    .line 27
    .line 28
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/at;->j:Lcom/google/android/gms/internal/ads/Qi;

    .line 29
    .line 30
    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/at;->d:J

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final zzb()LD4/b;
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/at;->i:Lcom/google/android/gms/internal/ads/Cn;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    const-string v3, "seq_num"

    .line 11
    .line 12
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/at;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 18
    .line 19
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 20
    .line 21
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 36
    .line 37
    iget-object v2, v2, Lk3/l;->j:LP3/b;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/at;->d:J

    .line 47
    .line 48
    sub-long/2addr v4, v6

    .line 49
    const-string v2, "tsacc"

    .line 50
    .line 51
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/at;->a:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v2}, Lo3/O;->e(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v4, 0x1

    .line 65
    if-eq v4, v2, :cond_0

    .line 66
    .line 67
    const-string v2, "1"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-string v2, "0"

    .line 71
    .line 72
    :goto_0
    const-string v4, "foreground"

    .line 73
    .line 74
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->f5:Lcom/google/android/gms/internal/ads/J7;

    .line 78
    .line 79
    iget-object v2, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/at;->g:Lcom/google/android/gms/internal/ads/Yv;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/at;->e:Lcom/google/android/gms/internal/ads/Mi;

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/Mi;->c(Ll3/b1;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/at;->f:Lcom/google/android/gms/internal/ads/jw;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jw;->a()Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/Zs;

    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/Zs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
