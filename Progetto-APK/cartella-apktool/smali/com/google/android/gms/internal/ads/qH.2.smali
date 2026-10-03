.class public abstract Lcom/google/android/gms/internal/ads/qH;
.super Lcom/google/android/gms/internal/ads/PG;
.source "SourceFile"


# static fields
.field private static final zza:I = -0x80000000

.field private static final zzb:I = 0x7fffffff

.field private static zzc:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/qH;",
            ">;"
        }
    .end annotation
.end field

.field static final zzr:I = 0x7fffffff

.field static final zzs:I


# instance fields
.field private zzd:I

.field protected zzt:Lcom/google/android/gms/internal/ads/hI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/qH;->zzc:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/PG;->zzq:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/qH;->zzd:I

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/hI;->f:Lcom/google/android/gms/internal/ads/hI;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qH;->zzt:Lcom/google/android/gms/internal/ads/hI;

    .line 13
    .line 14
    return-void
.end method

.method public static h(Lcom/google/android/gms/internal/ads/xH;)Lcom/google/android/gms/internal/ads/xH;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-int/2addr v0, v0

    .line 11
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/xH;->a(I)Lcom/google/android/gms/internal/ads/xH;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static varargs j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of p1, p0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    instance-of p1, p0, Ljava/lang/Error;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Ljava/lang/Error;

    .line 20
    .line 21
    throw p0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 25
    .line 26
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    throw p0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 37
    .line 38
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public static p(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/qH;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->zzc:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/qH;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->zzc:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/qH;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Class initialization cannot fail."

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/nI;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/google/android/gms/internal/ads/qH;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x6

    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/qH;->x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/google/android/gms/internal/ads/qH;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    sget-object v1, Lcom/google/android/gms/internal/ads/qH;->zzc:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static r(Lcom/google/android/gms/internal/ads/qH;Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/qH;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->t()Lcom/google/android/gms/internal/ads/dH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/qH;->s(Lcom/google/android/gms/internal/ads/qH;Lcom/google/android/gms/internal/ads/dH;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/qH;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dH;->y()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/qH;->y(Lcom/google/android/gms/internal/ads/qH;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static s(Lcom/google/android/gms/internal/ads/qH;Lcom/google/android/gms/internal/ads/dH;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/qH;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qH;->q()Lcom/google/android/gms/internal/ads/qH;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dH;->b:Lcom/google/android/gms/internal/ads/eH;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/eH;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/eH;-><init>(Lcom/google/android/gms/internal/ads/dH;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ads/bI;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eH;Lcom/google/android/gms/internal/ads/jH;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/bI;->zzf(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/gI; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :catch_1
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :catch_2
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :catch_3
    move-exception p0

    .line 39
    goto :goto_4

    .line 40
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    instance-of p1, p1, Lcom/google/android/gms/internal/ads/AH;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/google/android/gms/internal/ads/AH;

    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    throw p0

    .line 56
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    instance-of p1, p1, Lcom/google/android/gms/internal/ads/AH;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lcom/google/android/gms/internal/ads/AH;

    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :goto_4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/AH;->G:Z

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_3
    throw p0
.end method

.method public static t(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qH;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qH;->n()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->zzc:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final u(Lcom/google/android/gms/internal/ads/qH;Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/qH;->x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Byte;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ne v2, v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/ads/bI;->zzl(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v1, p0

    .line 40
    :goto_0
    const/4 p1, 0x2

    .line 41
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/qH;->x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_3
    return v2
.end method

.method public static y(Lcom/google/android/gms/internal/ads/qH;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/qH;->u(Lcom/google/android/gms/internal/ads/qH;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/gI;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gI;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public static z(Lcom/google/android/gms/internal/ads/qH;[BILcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/qH;
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qH;->q()Lcom/google/android/gms/internal/ads/qH;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    new-instance v5, Lcom/google/android/gms/internal/ads/SG;

    .line 19
    .line 20
    invoke-direct {v5, p3}, Lcom/google/android/gms/internal/ads/SG;-><init>(Lcom/google/android/gms/internal/ads/jH;)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v0, v6

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move v4, p2

    .line 28
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bI;->c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/SG;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v6, p0}, Lcom/google/android/gms/internal/ads/bI;->zzf(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/ads/gI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_2
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :catch_3
    new-instance p0, Lcom/google/android/gms/internal/ads/AH;

    .line 42
    .line 43
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    instance-of p1, p1, Lcom/google/android/gms/internal/ads/AH;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcom/google/android/gms/internal/ads/AH;

    .line 62
    .line 63
    throw p0

    .line 64
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :goto_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/AH;->G:Z

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_2
    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/bI;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qH;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/bI;->zza(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/bI;->zza(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    :goto_0
    if-ltz p1, :cond_1

    .line 29
    .line 30
    return p1

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "serialized size must be non-negative, was "

    .line 34
    .line 35
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/qH;->zzd:I

    .line 44
    .line 45
    const v1, 0x7fffffff

    .line 46
    .line 47
    .line 48
    and-int v2, v0, v1

    .line 49
    .line 50
    if-eq v2, v1, :cond_3

    .line 51
    .line 52
    and-int p1, v0, v1

    .line 53
    .line 54
    return p1

    .line 55
    :cond_3
    if-nez p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v0, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/bI;->zza(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/bI;->zza(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/qH;->f(I)V

    .line 77
    .line 78
    .line 79
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/qH;

    .line 31
    .line 32
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bI;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public final f(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/qH;->zzd:I

    .line 4
    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    or-int/2addr p1, v0

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/qH;->zzd:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "serialized size must be non-negative, was "

    .line 15
    .line 16
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/oH;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/qH;->x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/oH;

    .line 8
    .line 9
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qH;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/bI;->zzb(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/PG;->zzq:I

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/bI;->zzb(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/google/android/gms/internal/ads/PG;->zzq:I

    .line 41
    .line 42
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/PG;->zzq:I

    .line 43
    .line 44
    return v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/SH;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/qH;->x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/SH;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/PG;->zzq:I

    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qH;->f(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/bI;->zzf(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qH;->n()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/qH;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/qH;->zzd:I

    return-void
.end method

.method public final o()Lcom/google/android/gms/internal/ads/oH;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/qH;->x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/oH;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oH;->G:Lcom/google/android/gms/internal/ads/qH;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/qH;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 22
    .line 23
    sget-object v2, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2, v1, p0}, Lcom/google/android/gms/internal/ads/bI;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/ads/qH;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/qH;->x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/qH;

    .line 8
    .line 9
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/OH;->a:[C

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "# "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/OH;->c(Lcom/google/android/gms/internal/ads/NH;Ljava/lang/StringBuilder;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final v()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/qH;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w(Lcom/google/android/gms/internal/ads/hH;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/UH;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/bI;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/hH;->c:Lcom/google/android/gms/internal/ads/iH;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/iH;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/iH;-><init>(Lcom/google/android/gms/internal/ads/hH;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/ads/bI;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/iH;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public abstract x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;
.end method
