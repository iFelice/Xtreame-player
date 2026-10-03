.class public final Lcom/google/android/gms/internal/ads/sE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/sE;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/GD;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/GD;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, LY/r;->a(Lcom/google/android/gms/internal/ads/ME;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/sE;

    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/sE;->b:Lcom/google/android/gms/internal/ads/sE;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/xc;

    .line 7
    .line 8
    const/16 v2, 0x1b

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/xc;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/LE;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/LE;-><init>(Lcom/google/android/gms/internal/ads/xc;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/FE;)Lcom/google/android/gms/internal/ads/Cw;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/LE;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/JE;

    .line 13
    .line 14
    const-class v2, Lcom/google/android/gms/internal/ads/FE;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/FE;->b:Lcom/google/android/gms/internal/ads/NG;

    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/JE;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/NG;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LE;->b:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/gms/internal/ads/YD;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/YD;->c:Lcom/google/android/gms/internal/ads/ZD;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ZD;->f(Lcom/google/android/gms/internal/ads/FE;)Lcom/google/android/gms/internal/ads/NC;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/JE;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "No Key Parser for requested key type "

    .line 49
    .line 50
    const-string v2, " available"

    .line 51
    .line 52
    invoke-static {v1, v0, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/GE;)Lcom/google/android/gms/internal/ads/GC;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/LE;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/JE;

    .line 13
    .line 14
    const-class v2, Lcom/google/android/gms/internal/ads/GE;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/GE;->a:Lcom/google/android/gms/internal/ads/NG;

    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/JE;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/NG;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LE;->d:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/gms/internal/ads/uE;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/uE;->c:Lcom/google/android/gms/internal/ads/vE;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vE;->e(Lcom/google/android/gms/internal/ads/GE;)Lcom/google/android/gms/internal/ads/GC;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/JE;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "No Parameters Parser for requested key type "

    .line 49
    .line 50
    const-string v2, " available"

    .line 51
    .line 52
    invoke-static {v1, v0, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/Cw;)Lcom/google/android/gms/internal/ads/IE;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/LE;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/KE;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-class v3, Lcom/google/android/gms/internal/ads/FE;

    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/KE;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LE;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/google/android/gms/internal/ads/aE;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aE;->c:Lcom/google/android/gms/internal/ads/bE;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bE;->a(Lcom/google/android/gms/internal/ads/Cw;)Lcom/google/android/gms/internal/ads/FE;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/KE;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "No Key serializer for "

    .line 51
    .line 52
    const-string v2, " available"

    .line 53
    .line 54
    invoke-static {v1, v0, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/IE;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/LE;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/KE;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-class v3, Lcom/google/android/gms/internal/ads/GE;

    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/KE;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LE;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/google/android/gms/internal/ads/wE;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wE;->c:Lcom/google/android/gms/internal/ads/xE;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/xE;->d(Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/GE;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/KE;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "No Key Format serializer for "

    .line 51
    .line 52
    const-string v2, " available"

    .line 53
    .line 54
    invoke-static {v1, v0, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final declared-synchronized e(Lcom/google/android/gms/internal/ads/YD;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/LE;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/LE;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xc;->k(Lcom/google/android/gms/internal/ads/YD;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/LE;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/LE;-><init>(Lcom/google/android/gms/internal/ads/xc;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final declared-synchronized f(Lcom/google/android/gms/internal/ads/aE;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/LE;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/LE;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xc;->q(Lcom/google/android/gms/internal/ads/aE;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/LE;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/LE;-><init>(Lcom/google/android/gms/internal/ads/xc;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final declared-synchronized g(Lcom/google/android/gms/internal/ads/uE;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/LE;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/LE;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xc;->v(Lcom/google/android/gms/internal/ads/uE;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/LE;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/LE;-><init>(Lcom/google/android/gms/internal/ads/xc;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final declared-synchronized h(Lcom/google/android/gms/internal/ads/wE;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/LE;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/LE;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xc;->C(Lcom/google/android/gms/internal/ads/wE;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/LE;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/LE;-><init>(Lcom/google/android/gms/internal/ads/xc;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method
