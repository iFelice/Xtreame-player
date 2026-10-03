.class public abstract LD3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LH3/b;


# instance fields
.field public final a:LD3/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Session"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LD3/f;->b:LH3/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LD3/A;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LD3/A;-><init>(LD3/f;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/d;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/internal/cast/f;->B3(Ljava/lang/String;Ljava/lang/String;LD3/A;)LD3/y;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch LD3/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p1

    .line 21
    :goto_0
    const-class p2, Lcom/google/android/gms/internal/cast/f;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 p3, 0x2

    .line 28
    new-array p3, p3, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v0, "newSessionImpl"

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    aput-object v0, p3, v1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object p2, p3, v0

    .line 37
    .line 38
    const-string p2, "Unable to call %s on %s."

    .line 39
    .line 40
    sget-object v0, Lcom/google/android/gms/internal/cast/d;->a:LH3/b;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2, p3}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    :goto_1
    iput-object p1, p0, LD3/f;->a:LD3/y;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, LD3/f;->a:LD3/y;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    check-cast v0, LD3/w;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0xd

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 22
    const-class v0, LD3/y;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x2

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v2, "notifySessionEnded"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v2, v1, v3

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    aput-object v0, v1, v2

    .line 38
    .line 39
    const-string v0, "Unable to call %s on %s."

    .line 40
    .line 41
    sget-object v2, LD3/f;->b:LH3/b;

    .line 42
    .line 43
    invoke-virtual {v2, p1, v0, v1}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final b()I
    .locals 5

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, LD3/f;->a:LD3/y;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    move-object v2, v1

    .line 12
    check-cast v2, LD3/w;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/16 v4, 0x11

    .line 19
    .line 20
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 29
    .line 30
    .line 31
    const v2, 0xc952160

    .line 32
    .line 33
    .line 34
    if-lt v3, v2, :cond_0

    .line 35
    .line 36
    check-cast v1, LD3/w;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/16 v3, 0x12

    .line 43
    .line 44
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    return v2

    .line 56
    :catch_0
    move-exception v1

    .line 57
    const-class v2, LD3/y;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x2

    .line 64
    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    .line 66
    const-string v4, "getSessionStartType"

    .line 67
    .line 68
    aput-object v4, v3, v0

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    aput-object v2, v3, v4

    .line 72
    .line 73
    const-string v2, "Unable to call %s on %s."

    .line 74
    .line 75
    sget-object v4, LD3/f;->b:LH3/b;

    .line 76
    .line 77
    invoke-virtual {v4, v1, v2, v3}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    return v0
.end method

.method public final c()LR3/a;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, LD3/f;->a:LD3/y;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    :try_start_0
    check-cast v2, LD3/w;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-object v3

    .line 29
    :catch_0
    move-exception v2

    .line 30
    const-class v3, LD3/y;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x2

    .line 37
    new-array v4, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v5, "getWrappedObject"

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    aput-object v5, v4, v6

    .line 43
    .line 44
    aput-object v3, v4, v0

    .line 45
    .line 46
    const-string v0, "Unable to call %s on %s."

    .line 47
    .line 48
    sget-object v3, LD3/f;->b:LH3/b;

    .line 49
    .line 50
    invoke-virtual {v3, v2, v0, v4}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-object v1
.end method
