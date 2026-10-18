.class public Lcom/google/android/gms/internal/pal/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK3/p;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Cloneable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/pal/m2;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/m3;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/pal/m2;->G:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/m6;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/pal/m2;->G:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/pal/M4;->b:Lcom/google/android/gms/internal/pal/M4;

    iput-object p1, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/n3;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/pal/m2;->G:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/pal/m2;->G:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/d;Ljava/lang/Class;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/pal/m2;->G:I

    .line 16
    iget-object v0, p1, Lk/d;->b:Ljava/lang/Object;

    .line 17
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 18
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Void;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 21
    const-string v1, "Given internalKeyMananger "

    .line 22
    const-string v2, " does not support primitive class "

    .line 23
    invoke-static {v1, p1, v2, p2}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/pal/q3;)Lcom/google/android/gms/internal/pal/m2;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/q3;->a()Lcom/google/android/gms/internal/pal/m6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/m6;->q()Lcom/google/android/gms/internal/pal/I;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/gms/internal/pal/l6;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/e6;->n()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eq v2, v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/e6;->n()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x2

    .line 45
    if-eq v2, v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/e6;->n()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x3

    .line 56
    if-eq v2, v3, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/e6;->n()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uc;->C(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/e6;->q()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v3, "keyset contains key material of type "

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, " for type url "

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/m6;->m()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-lez v0, :cond_2

    .line 115
    .line 116
    new-instance v0, Lcom/google/android/gms/internal/pal/m2;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/pal/m2;-><init>(Lcom/google/android/gms/internal/pal/m6;)V

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 123
    .line 124
    const-string v0, "empty keyset"

    .line 125
    .line 126
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/pal/L; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 131
    .line 132
    const-string v0, "invalid keyset"

    .line 133
    .line 134
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/pal/r;)Lcom/google/android/gms/internal/pal/e6;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    .line 2
    .line 3
    :try_start_0
    move-object v1, v0

    .line 4
    check-cast v1, Lk/d;

    .line 5
    .line 6
    invoke-virtual {v1}, Lk/d;->n()Lcom/google/android/gms/internal/pal/n4;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/pal/n4;->b(Lcom/google/android/gms/internal/pal/r;)Lcom/google/android/gms/internal/pal/j;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/pal/n4;->d(Lcom/google/android/gms/internal/pal/j;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/pal/n4;->a(Lcom/google/android/gms/internal/pal/j;)Lcom/google/android/gms/internal/pal/j;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/pal/e6;->m()Lcom/google/android/gms/internal/pal/d6;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Lk/d;

    .line 27
    .line 28
    invoke-virtual {v2}, Lk/d;->q()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 38
    .line 39
    .line 40
    iput-boolean v4, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 41
    .line 42
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 43
    .line 44
    check-cast v3, Lcom/google/android/gms/internal/pal/e6;

    .line 45
    .line 46
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pal/e6;->r(Lcom/google/android/gms/internal/pal/e6;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/j;->a()Lcom/google/android/gms/internal/pal/q;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-boolean v2, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 58
    .line 59
    .line 60
    iput-boolean v4, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 61
    .line 62
    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 63
    .line 64
    check-cast v2, Lcom/google/android/gms/internal/pal/e6;

    .line 65
    .line 66
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/pal/e6;->s(Lcom/google/android/gms/internal/pal/e6;Lcom/google/android/gms/internal/pal/q;)V

    .line 67
    .line 68
    .line 69
    check-cast v0, Lk/d;

    .line 70
    .line 71
    invoke-virtual {v0}, Lk/d;->o()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget-boolean v0, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 80
    .line 81
    .line 82
    iput-boolean v4, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 83
    .line 84
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 85
    .line 86
    check-cast v0, Lcom/google/android/gms/internal/pal/e6;

    .line 87
    .line 88
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/pal/e6;->t(Lcom/google/android/gms/internal/pal/e6;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lcom/google/android/gms/internal/pal/e6;
    :try_end_0
    .catch Lcom/google/android/gms/internal/pal/L; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    return-object p1

    .line 98
    :catch_0
    move-exception p1

    .line 99
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 100
    .line 101
    const-string v1, "Unexpected proto"

    .line 102
    .line 103
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/os/Bundle;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/pal/u2;

    .line 6
    .line 7
    check-cast p2, Lg4/i;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/pal/s2;

    .line 10
    .line 11
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/pal/s2;-><init>(Lg4/i;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/gms/internal/pal/q2;

    .line 19
    .line 20
    check-cast p1, Lcom/google/android/gms/internal/pal/o2;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    sget v2, Lcom/google/android/gms/internal/pal/a2;->a:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/pal/a2;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/y5;->H:Landroid/os/IBinder;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-interface {p1, v2, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/n2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/pal/j2;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/pal/n2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/j2;->a:Lcom/google/android/gms/internal/pal/k2;

    .line 34
    .line 35
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/pal/k2;->e:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/k2;->e:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/pal/F3;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    const-class v3, Lcom/google/android/gms/internal/pal/p3;

    .line 6
    .line 7
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/android/gms/internal/pal/D3;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    move-object v2, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/pal/D3;->zza()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    const-string v5, "No wrapper found for "

    .line 23
    .line 24
    if-eqz v2, :cond_12

    .line 25
    .line 26
    iget-object v6, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v6, Lcom/google/android/gms/internal/pal/m6;

    .line 29
    .line 30
    sget v7, Lcom/google/android/gms/internal/pal/G3;->a:I

    .line 31
    .line 32
    invoke-virtual {v6}, Lcom/google/android/gms/internal/pal/m6;->n()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/internal/pal/m6;->q()Lcom/google/android/gms/internal/pal/I;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x1

    .line 47
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    const/4 v13, 0x3

    .line 52
    if-eqz v12, :cond_8

    .line 53
    .line 54
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    check-cast v12, Lcom/google/android/gms/internal/pal/l6;

    .line 59
    .line 60
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/l6;->s()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    if-ne v14, v13, :cond_1

    .line 65
    .line 66
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/l6;->r()Z

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    if-eqz v13, :cond_7

    .line 71
    .line 72
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/l6;->t()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    const/4 v14, 0x2

    .line 77
    if-eq v13, v14, :cond_6

    .line 78
    .line 79
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/l6;->s()I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-eq v13, v14, :cond_5

    .line 84
    .line 85
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    if-ne v13, v7, :cond_3

    .line 90
    .line 91
    if-nez v10, :cond_2

    .line 92
    .line 93
    const/4 v10, 0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 96
    .line 97
    const-string v1, "keyset contains multiple primary keys"

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_3
    :goto_2
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/e6;->n()I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    const/4 v13, 0x4

    .line 112
    if-eq v12, v13, :cond_4

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    const/4 v12, 0x1

    .line 117
    :goto_3
    and-int/2addr v11, v12

    .line 118
    add-int/2addr v9, v1

    .line 119
    goto :goto_1

    .line 120
    :cond_5
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 121
    .line 122
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    .line 132
    aput-object v3, v1, v0

    .line 133
    .line 134
    const-string v0, "key %d has unknown status"

    .line 135
    .line 136
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v2

    .line 144
    :cond_6
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 145
    .line 146
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    new-array v1, v1, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object v3, v1, v0

    .line 157
    .line 158
    const-string v0, "key %d has unknown prefix"

    .line 159
    .line 160
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v2

    .line 168
    :cond_7
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 169
    .line 170
    invoke-virtual {v12}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    .line 179
    .line 180
    aput-object v3, v1, v0

    .line 181
    .line 182
    const-string v0, "key %d has no key data"

    .line 183
    .line 184
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v2

    .line 192
    :cond_8
    if-eqz v9, :cond_11

    .line 193
    .line 194
    if-nez v10, :cond_a

    .line 195
    .line 196
    if-eqz v11, :cond_9

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 200
    .line 201
    const-string v1, "keyset doesn\'t contain a valid primary key"

    .line 202
    .line 203
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :cond_a
    :goto_4
    new-instance v7, Lm2/o;

    .line 208
    .line 209
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    .line 213
    .line 214
    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 215
    .line 216
    .line 217
    iput-object v8, v7, Lm2/o;->H:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v2, v7, Lm2/o;->G:Ljava/lang/Object;

    .line 220
    .line 221
    sget-object v8, Lcom/google/android/gms/internal/pal/M4;->b:Lcom/google/android/gms/internal/pal/M4;

    .line 222
    .line 223
    iget-object v8, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v8, Lcom/google/android/gms/internal/pal/M4;

    .line 226
    .line 227
    iput-object v8, v7, Lm2/o;->J:Ljava/lang/Object;

    .line 228
    .line 229
    invoke-virtual {v6}, Lcom/google/android/gms/internal/pal/m6;->q()Lcom/google/android/gms/internal/pal/I;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    :cond_b
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-eqz v9, :cond_d

    .line 242
    .line 243
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    check-cast v9, Lcom/google/android/gms/internal/pal/l6;

    .line 248
    .line 249
    invoke-virtual {v9}, Lcom/google/android/gms/internal/pal/l6;->s()I

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-ne v10, v13, :cond_b

    .line 254
    .line 255
    invoke-virtual {v9}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    invoke-virtual {v10}, Lcom/google/android/gms/internal/pal/e6;->q()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    invoke-virtual {v10}, Lcom/google/android/gms/internal/pal/e6;->p()Lcom/google/android/gms/internal/pal/r;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    sget-object v12, Lcom/google/android/gms/internal/pal/F3;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 268
    .line 269
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    check-cast v12, Lcom/google/android/gms/internal/pal/v3;

    .line 274
    .line 275
    invoke-virtual {v12, v2, v11}, Lcom/google/android/gms/internal/pal/v3;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/gms/internal/pal/m2;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    iget-object v12, v11, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    .line 280
    .line 281
    :try_start_0
    move-object v14, v12

    .line 282
    check-cast v14, Lk/d;

    .line 283
    .line 284
    invoke-virtual {v14, v10}, Lk/d;->p(Lcom/google/android/gms/internal/pal/r;)Lcom/google/android/gms/internal/pal/j;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/pal/m2;->e(Lcom/google/android/gms/internal/pal/j;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v10
    :try_end_0
    .catch Lcom/google/android/gms/internal/pal/L; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    invoke-virtual {v9}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 293
    .line 294
    .line 295
    move-result v11

    .line 296
    invoke-virtual {v6}, Lcom/google/android/gms/internal/pal/m6;->n()I

    .line 297
    .line 298
    .line 299
    move-result v12

    .line 300
    if-ne v11, v12, :cond_c

    .line 301
    .line 302
    invoke-virtual {v7, v10, v9, v1}, Lm2/o;->x(Ljava/lang/Object;Lcom/google/android/gms/internal/pal/l6;Z)V

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_c
    invoke-virtual {v7, v10, v9, v0}, Lm2/o;->x(Ljava/lang/Object;Lcom/google/android/gms/internal/pal/l6;Z)V

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :catch_0
    move-exception v0

    .line 311
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 312
    .line 313
    check-cast v12, Lk/d;

    .line 314
    .line 315
    iget-object v2, v12, Lk/d;->a:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v2, Ljava/lang/Class;

    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    const-string v3, "Failures parsing proto of type "

    .line 324
    .line 325
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    throw v1

    .line 333
    :cond_d
    iget-object v0, v7, Lm2/o;->H:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 336
    .line 337
    if-eqz v0, :cond_10

    .line 338
    .line 339
    new-instance v1, Lm2/i;

    .line 340
    .line 341
    iget-object v2, v7, Lm2/o;->I:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v2, Lcom/google/android/gms/internal/pal/A3;

    .line 344
    .line 345
    iget-object v6, v7, Lm2/o;->J:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v6, Lcom/google/android/gms/internal/pal/M4;

    .line 348
    .line 349
    iget-object v8, v7, Lm2/o;->G:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v8, Ljava/lang/Class;

    .line 352
    .line 353
    invoke-direct {v1, v0, v2, v6, v8}, Lm2/i;-><init>(Ljava/util/concurrent/ConcurrentMap;Lcom/google/android/gms/internal/pal/A3;Lcom/google/android/gms/internal/pal/M4;Ljava/lang/Class;)V

    .line 354
    .line 355
    .line 356
    iput-object v4, v7, Lm2/o;->H:Ljava/lang/Object;

    .line 357
    .line 358
    sget-object v0, Lcom/google/android/gms/internal/pal/F3;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 359
    .line 360
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Lcom/google/android/gms/internal/pal/D3;

    .line 365
    .line 366
    if-eqz v0, :cond_f

    .line 367
    .line 368
    invoke-interface {v0}, Lcom/google/android/gms/internal/pal/D3;->zza()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    iget-object v3, v1, Lm2/i;->J:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v3, Ljava/lang/Class;

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eqz v2, :cond_e

    .line 381
    .line 382
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pal/D3;->a(Lm2/i;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    return-object v0

    .line 387
    :cond_e
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 388
    .line 389
    invoke-interface {v0}, Lcom/google/android/gms/internal/pal/D3;->zza()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iget-object v1, v1, Lm2/i;->J:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v1, Ljava/lang/Class;

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    const-string v3, "Wrong input primitive class, expected "

    .line 406
    .line 407
    const-string v4, ", got "

    .line 408
    .line 409
    invoke-static {v3, v0, v4, v1}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v2

    .line 417
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 418
    .line 419
    iget-object v1, v1, Lm2/i;->J:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v1, Ljava/lang/Class;

    .line 422
    .line 423
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw v0

    .line 435
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 436
    .line 437
    const-string v1, "build cannot be called twice"

    .line 438
    .line 439
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v0

    .line 443
    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 444
    .line 445
    const-string v1, "keyset must contain at least one ENABLED key"

    .line 446
    .line 447
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v0

    .line 451
    :cond_12
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 452
    .line 453
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v0
.end method

.method public final e(Lcom/google/android/gms/internal/pal/j;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/lang/Class;

    .line 5
    .line 6
    const-class v2, Ljava/lang/Void;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    check-cast v2, Lk/d;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lk/d;->r(Lcom/google/android/gms/internal/pal/j;)V

    .line 20
    .line 21
    .line 22
    check-cast v1, Lk/d;

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v1, p1, v0}, Lk/d;->s(Lcom/google/android/gms/internal/pal/j;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 32
    .line 33
    const-string v0, "Cannot create a primitive for Void"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/m2;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/gms/internal/pal/m6;

    .line 14
    .line 15
    sget v1, Lcom/google/android/gms/internal/pal/G3;->a:I

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/pal/q6;->m()Lcom/google/android/gms/internal/pal/n6;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/m6;->n()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 31
    .line 32
    .line 33
    iput-boolean v4, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 34
    .line 35
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 36
    .line 37
    check-cast v3, Lcom/google/android/gms/internal/pal/q6;

    .line 38
    .line 39
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pal/q6;->n(Lcom/google/android/gms/internal/pal/q6;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/m6;->q()Lcom/google/android/gms/internal/pal/I;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_6

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/google/android/gms/internal/pal/l6;

    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/pal/p6;->m()Lcom/google/android/gms/internal/pal/o6;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/e6;->q()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-boolean v6, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 75
    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 79
    .line 80
    .line 81
    iput-boolean v4, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 82
    .line 83
    :cond_1
    iget-object v6, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 84
    .line 85
    check-cast v6, Lcom/google/android/gms/internal/pal/p6;

    .line 86
    .line 87
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/pal/p6;->n(Lcom/google/android/gms/internal/pal/p6;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/l6;->s()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    iget-boolean v6, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 95
    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 99
    .line 100
    .line 101
    iput-boolean v4, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 102
    .line 103
    :cond_2
    iget-object v6, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 104
    .line 105
    check-cast v6, Lcom/google/android/gms/internal/pal/p6;

    .line 106
    .line 107
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/pal/p6;->q(Lcom/google/android/gms/internal/pal/p6;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/l6;->t()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    iget-boolean v6, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 115
    .line 116
    if-eqz v6, :cond_3

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 119
    .line 120
    .line 121
    iput-boolean v4, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 122
    .line 123
    :cond_3
    iget-object v6, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 124
    .line 125
    check-cast v6, Lcom/google/android/gms/internal/pal/p6;

    .line 126
    .line 127
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/pal/p6;->p(Lcom/google/android/gms/internal/pal/p6;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iget-boolean v5, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 135
    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 139
    .line 140
    .line 141
    iput-boolean v4, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 142
    .line 143
    :cond_4
    iget-object v5, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 144
    .line 145
    check-cast v5, Lcom/google/android/gms/internal/pal/p6;

    .line 146
    .line 147
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/pal/p6;->o(Lcom/google/android/gms/internal/pal/p6;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lcom/google/android/gms/internal/pal/p6;

    .line 155
    .line 156
    iget-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 157
    .line 158
    if-eqz v3, :cond_5

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 161
    .line 162
    .line 163
    iput-boolean v4, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 164
    .line 165
    :cond_5
    iget-object v3, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 166
    .line 167
    check-cast v3, Lcom/google/android/gms/internal/pal/q6;

    .line 168
    .line 169
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pal/q6;->o(Lcom/google/android/gms/internal/pal/q6;Lcom/google/android/gms/internal/pal/p6;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/google/android/gms/internal/pal/q6;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/D;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    return-object v0

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
