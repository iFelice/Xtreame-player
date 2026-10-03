.class public final Lcom/google/android/gms/internal/pal/R1;
.super Lcom/google/android/gms/internal/pal/Y1;
.source "SourceFile"


# static fields
.field public static volatile h:Ljava/lang/String;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pal/R1;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;I)V
    .locals 7

    .line 1
    const/4 v6, 0x1

    .line 2
    const-string v2, "Cv0JAL9ptzpRvgIi9AFTFGn0l5MhpPgpRN4VfZybymKMuiqBn9AG0bgJaX/QotAk"

    .line 3
    .line 4
    const-string v3, "/xONYRXeBwNZknPQ1yARx5KZSPQPbfL2mKAb1nbkf2s="

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 2
    .line 3
    const-string v1, "E"

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 11
    .line 12
    .line 13
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/m0;->f0(Lcom/google/android/gms/internal/pal/m0;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/pal/R1;->h:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/pal/R1;->i:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/pal/R1;->h:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 34
    .line 35
    new-array v2, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    sput-object v1, Lcom/google/android/gms/internal/pal/R1;->h:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    monitor-exit v0

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v1

    .line 53
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 57
    .line 58
    sget-object v2, Lcom/google/android/gms/internal/pal/R1;->h:Ljava/lang/String;

    .line 59
    .line 60
    iget-boolean v4, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 65
    .line 66
    .line 67
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 68
    .line 69
    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 70
    .line 71
    check-cast v1, Lcom/google/android/gms/internal/pal/m0;

    .line 72
    .line 73
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pal/m0;->f0(Lcom/google/android/gms/internal/pal/m0;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_1
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    throw v1
.end method
