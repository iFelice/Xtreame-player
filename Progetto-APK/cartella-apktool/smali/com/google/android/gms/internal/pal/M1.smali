.class public final Lcom/google/android/gms/internal/pal/M1;
.super Lcom/google/android/gms/internal/pal/Y1;
.source "SourceFile"


# static fields
.field public static volatile h:Ljava/lang/Long;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pal/M1;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;I)V
    .locals 7

    .line 1
    const/16 v6, 0x2c

    .line 2
    .line 3
    const-string v2, "XFxH1z0dBuMDP7aWA+P/3WKwW9qr8sC2ASjEfciaKHfSLryjCNl4cmJgfsh2Tylb"

    .line 4
    .line 5
    const-string v3, "r0MNv9zqwvoUwASL1pBJjOA1OkDa8Kcs5NaA6VOkJEI="

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/M1;->h:Ljava/lang/Long;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/pal/M1;->i:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/pal/M1;->h:Ljava/lang/Long;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    new-array v3, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Long;

    .line 23
    .line 24
    sput-object v2, Lcom/google/android/gms/internal/pal/M1;->h:Ljava/lang/Long;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 37
    .line 38
    sget-object v3, Lcom/google/android/gms/internal/pal/M1;->h:Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iget-boolean v5, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 49
    .line 50
    .line 51
    iput-boolean v1, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 52
    .line 53
    :cond_2
    iget-object v1, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 54
    .line 55
    check-cast v1, Lcom/google/android/gms/internal/pal/m0;

    .line 56
    .line 57
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/pal/m0;->t(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :catchall_1
    move-exception v1

    .line 63
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    throw v1
.end method
