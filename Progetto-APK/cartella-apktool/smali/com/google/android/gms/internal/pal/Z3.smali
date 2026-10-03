.class public abstract Lcom/google/android/gms/internal/pal/Z3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/pal/x6;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 4
    .line 5
    const/16 v3, 0xb

    .line 6
    .line 7
    const-class v4, Lcom/google/android/gms/internal/pal/p3;

    .line 8
    .line 9
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    new-array v3, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 13
    .line 14
    aput-object v2, v3, v0

    .line 15
    .line 16
    new-instance v2, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    const-string v5, "KeyTypeManager constructed with duplicate factories for primitive "

    .line 23
    .line 24
    if-gtz v4, :cond_1

    .line 25
    .line 26
    aget-object v6, v3, v4

    .line 27
    .line 28
    iget-object v7, v6, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    iget-object v8, v6, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 35
    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    add-int/2addr v4, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    aget-object v3, v3, v0

    .line 62
    .line 63
    iget-object v3, v3, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/google/android/gms/internal/pal/K3;

    .line 69
    .line 70
    const-class v3, Lcom/google/android/gms/internal/pal/o3;

    .line 71
    .line 72
    const/16 v4, 0xa

    .line 73
    .line 74
    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    new-array v3, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 78
    .line 79
    aput-object v2, v3, v0

    .line 80
    .line 81
    new-instance v2, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    :goto_1
    if-gtz v4, :cond_3

    .line 88
    .line 89
    aget-object v6, v3, v4

    .line 90
    .line 91
    iget-object v7, v6, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 92
    .line 93
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    iget-object v8, v6, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 98
    .line 99
    if-nez v7, :cond_2

    .line 100
    .line 101
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    add-int/2addr v4, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_3
    aget-object v0, v3, v0

    .line 125
    .line 126
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 127
    .line 128
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/pal/x6;->m()Lcom/google/android/gms/internal/pal/x6;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Lcom/google/android/gms/internal/pal/Z3;->a:Lcom/google/android/gms/internal/pal/x6;

    .line 136
    .line 137
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/pal/Z3;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 143
    .line 144
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw v1
.end method

.method public static a()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/a4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->f(Lcom/google/android/gms/internal/pal/D3;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/pal/c4;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->f(Lcom/google/android/gms/internal/pal/D3;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/pal/H3;->a()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/pal/U3;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pal/Y3;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/Y3;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/internal/pal/M3;

    .line 33
    .line 34
    const/16 v2, 0xa

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/F3;->d(LP1/e;Lcom/google/android/gms/internal/pal/M3;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/google/android/gms/internal/pal/h4;

    .line 43
    .line 44
    new-instance v1, Lcom/google/android/gms/internal/pal/K3;

    .line 45
    .line 46
    const-class v2, Lcom/google/android/gms/internal/pal/o3;

    .line 47
    .line 48
    const/16 v3, 0xc

    .line 49
    .line 50
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    new-array v2, v2, [Lcom/google/android/gms/internal/pal/w4;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    aput-object v1, v2, v3

    .line 58
    .line 59
    const-class v1, Lcom/google/android/gms/internal/pal/a6;

    .line 60
    .line 61
    invoke-direct {v0, v1, v2}, Lk/d;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/pal/w4;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/google/android/gms/internal/pal/M3;

    .line 65
    .line 66
    const/16 v2, 0xb

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/F3;->d(LP1/e;Lcom/google/android/gms/internal/pal/M3;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
