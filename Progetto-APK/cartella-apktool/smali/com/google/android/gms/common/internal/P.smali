.class public final Lcom/google/android/gms/common/internal/P;
.super Lcom/google/android/gms/common/internal/E;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Lcom/google/android/gms/common/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/g;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/P;->h:Lcom/google/android/gms/common/internal/g;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/E;-><init>(Lcom/google/android/gms/common/internal/g;ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/internal/P;->g:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(LJ3/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/P;->h:Lcom/google/android/gms/common/internal/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/g;->zzc(Lcom/google/android/gms/common/internal/g;)Lcom/google/android/gms/common/internal/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/g;->zzc(Lcom/google/android/gms/common/internal/g;)Lcom/google/android/gms/common/internal/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/c;->onConnectionFailed(LJ3/b;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/g;->onConnectionFailed(LJ3/b;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final c()Z
    .locals 6

    .line 1
    const-string v0, "GmsClient"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/P;->g:Landroid/os/IBinder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    move-object v3, v1

    .line 10
    check-cast v3, Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-interface {v3}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v4, p0, Lcom/google/android/gms/common/internal/P;->h:Lcom/google/android/gms/common/internal/g;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/g;->getServiceDescriptor()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/g;->getServiceDescriptor()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v5, "service descriptor mismatch: "

    .line 35
    .line 36
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " vs. "

    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_0
    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/internal/g;->createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    const/4 v3, 0x4

    .line 66
    invoke-static {v4, v1, v3, v0}, Lcom/google/android/gms/common/internal/g;->zzn(Lcom/google/android/gms/common/internal/g;IILandroid/os/IInterface;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    invoke-static {v4, v1, v3, v0}, Lcom/google/android/gms/common/internal/g;->zzn(Lcom/google/android/gms/common/internal/g;IILandroid/os/IInterface;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    :cond_1
    const/4 v0, 0x0

    .line 80
    invoke-static {v4, v0}, Lcom/google/android/gms/common/internal/g;->zzg(Lcom/google/android/gms/common/internal/g;LJ3/b;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/g;->getConnectionHint()Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v4}, Lcom/google/android/gms/common/internal/g;->zzb(Lcom/google/android/gms/common/internal/g;)Lcom/google/android/gms/common/internal/b;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    invoke-static {v4}, Lcom/google/android/gms/common/internal/g;->zzb(Lcom/google/android/gms/common/internal/g;)Lcom/google/android/gms/common/internal/b;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/b;->onConnected(Landroid/os/Bundle;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    const/4 v0, 0x1

    .line 101
    return v0

    .line 102
    :cond_3
    return v2

    .line 103
    :catch_0
    const-string v1, "service probably died"

    .line 104
    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return v2
.end method
