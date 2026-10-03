.class public final Lcom/google/android/gms/internal/measurement/V2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/V2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/J2;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/V2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/V2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/V2;->c:Lcom/google/android/gms/internal/measurement/V2;

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
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/V2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/J2;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/J2;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/V2;->a:Lcom/google/android/gms/internal/measurement/J2;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Y2;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/V2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/measurement/Y2;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/V2;->a:Lcom/google/android/gms/internal/measurement/J2;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 21
    .line 22
    const-class v2, Lcom/google/android/gms/internal/measurement/s2;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/J2;->a:Lcom/google/android/gms/internal/measurement/I2;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/I2;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/N2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v2, v1

    .line 34
    check-cast v2, Lcom/google/android/gms/internal/measurement/X2;

    .line 35
    .line 36
    iget v3, v2, Lcom/google/android/gms/internal/measurement/X2;->d:I

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    and-int/2addr v3, v4

    .line 40
    if-ne v3, v4, :cond_0

    .line 41
    .line 42
    sget-object v1, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 43
    .line 44
    sget-object v3, Lcom/google/android/gms/internal/measurement/n2;->a:LS3/g;

    .line 45
    .line 46
    new-instance v3, Lcom/google/android/gms/internal/measurement/S2;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/X2;->a:Lcom/google/android/gms/internal/measurement/P2;

    .line 49
    .line 50
    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/S2;-><init>(Lcom/google/android/gms/internal/measurement/q2;Lcom/google/android/gms/internal/measurement/P2;)V

    .line 51
    .line 52
    .line 53
    move-object v1, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    sget v3, Lcom/google/android/gms/internal/measurement/T2;->a:I

    .line 56
    .line 57
    sget v3, Lcom/google/android/gms/internal/measurement/F2;->a:I

    .line 58
    .line 59
    sget-object v3, Lcom/google/android/gms/internal/measurement/Z2;->a:Lcom/google/android/gms/internal/measurement/q2;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/X2;->b()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    add-int/lit8 v2, v2, -0x1

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    if-eq v2, v4, :cond_1

    .line 69
    .line 70
    sget-object v2, Lcom/google/android/gms/internal/measurement/n2;->a:LS3/g;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v2, 0x0

    .line 74
    :goto_0
    sget v4, Lcom/google/android/gms/internal/measurement/M2;->a:I

    .line 75
    .line 76
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/R2;->p(Lcom/google/android/gms/internal/measurement/N2;Lcom/google/android/gms/internal/measurement/q2;LS3/g;)Lcom/google/android/gms/internal/measurement/R2;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_1
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/google/android/gms/internal/measurement/Y2;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_2
    return-object v1

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 91
    .line 92
    const-string v0, "messageType"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method
