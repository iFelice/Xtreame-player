.class public abstract Lcom/google/android/gms/internal/pal/V3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


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
    const/16 v3, 0x9

    .line 6
    .line 7
    const-class v4, Lcom/google/android/gms/internal/pal/n3;

    .line 8
    .line 9
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    new-array v4, v1, [Lcom/google/android/gms/internal/pal/w4;

    .line 13
    .line 14
    aput-object v2, v4, v0

    .line 15
    .line 16
    new-instance v2, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-gtz v5, :cond_1

    .line 23
    .line 24
    aget-object v6, v4, v5

    .line 25
    .line 26
    iget-object v7, v6, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    iget-object v8, v6, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 33
    .line 34
    if-nez v7, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    add-int/2addr v5, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "KeyTypeManager constructed with duplicate factories for primitive "

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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
    aget-object v0, v4, v0

    .line 62
    .line 63
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    .line 69
    .line 70
    sput-object v0, Lcom/google/android/gms/internal/pal/V3;->a:Ljava/lang/String;

    .line 71
    .line 72
    sget v0, Lcom/google/android/gms/internal/pal/x6;->a:I

    .line 73
    .line 74
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/pal/X3;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->f(Lcom/google/android/gms/internal/pal/D3;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/pal/U3;->a()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 90
    .line 91
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/F3;->e(Lcom/google/android/gms/internal/pal/M3;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 100
    .line 101
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v1
.end method
