.class public final Lcom/google/android/gms/internal/ads/Hp;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Nc;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/zg;

.field public final I:Lcom/google/android/gms/internal/ads/xg;

.field public final J:Lcom/google/android/gms/internal/ads/Mp;

.field public final K:Lcom/google/android/gms/internal/ads/jC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zg;Lcom/google/android/gms/internal/ads/xg;Lcom/google/android/gms/internal/ads/Mp;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/y1;)V
    .locals 0

    .line 1
    const-string p6, "com.google.android.gms.ads.internal.request.IAdsService"

    .line 2
    .line 3
    invoke-direct {p0, p6}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->G:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Hp;->H:Lcom/google/android/gms/internal/ads/zg;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Hp;->I:Lcom/google/android/gms/internal/ads/xg;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Hp;->J:Lcom/google/android/gms/internal/ads/Mp;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Hp;->K:Lcom/google/android/gms/internal/ads/jC;

    .line 15
    .line 16
    return-void
.end method

.method public static A3(LD4/b;Lcom/google/android/gms/internal/ads/Pc;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/hh;

    .line 6
    .line 7
    const/16 v1, 0xf

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hh;-><init>(II)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/Of;

    .line 20
    .line 21
    const/16 v1, 0x13

    .line 22
    .line 23
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Of;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 27
    .line 28
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final R1(Lcom/google/android/gms/internal/ads/Jc;Lcom/google/android/gms/internal/ads/Pc;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Hp;->z3(Lcom/google/android/gms/internal/ads/Jc;I)Lcom/google/android/gms/internal/ads/JB;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Hp;->A3(LD4/b;Lcom/google/android/gms/internal/ads/Pc;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final o1(Lcom/google/android/gms/internal/ads/Hc;Lcom/google/android/gms/internal/ads/Pc;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/Ku;

    .line 6
    .line 7
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Ku;-><init>(Lcom/google/android/gms/internal/ads/Hc;I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->H:Lcom/google/android/gms/internal/ads/zg;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zg;->a:Lcom/google/android/gms/internal/ads/Bg;

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/yg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Ku;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/MJ;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/android/gms/internal/ads/Kw;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/yg;->d:Lcom/google/android/gms/internal/ads/MJ;

    .line 36
    .line 37
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/google/android/gms/internal/ads/Kw;

    .line 42
    .line 43
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/hh;

    .line 44
    .line 45
    const/16 v3, 0xe

    .line 46
    .line 47
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lc4/y;

    .line 51
    .line 52
    const/16 v4, 0xc

    .line 53
    .line 54
    invoke-direct {v3, v4}, Lc4/y;-><init>(I)V

    .line 55
    .line 56
    .line 57
    sget-object v4, Lcom/google/android/gms/internal/ads/Iw;->L:Lcom/google/android/gms/internal/ads/Iw;

    .line 58
    .line 59
    sget-object v5, Lcom/google/android/gms/internal/ads/fC;->H:Lcom/google/android/gms/internal/ads/fC;

    .line 60
    .line 61
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v4, Lcom/google/android/gms/internal/ads/No;

    .line 66
    .line 67
    const/16 v5, 0xd

    .line 68
    .line 69
    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/Hp;->A3(LD4/b;Lcom/google/android/gms/internal/ads/Pc;)V

    .line 89
    .line 90
    .line 91
    sget-object p2, Lcom/google/android/gms/internal/ads/r8;->f:Lcom/google/android/gms/internal/ads/f8;

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_0

    .line 104
    .line 105
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Hp;->J:Lcom/google/android/gms/internal/ads/Mp;

    .line 106
    .line 107
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    new-instance v1, Lcom/google/android/gms/internal/ads/Cp;

    .line 111
    .line 112
    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/ads/Cp;-><init>(Lcom/google/android/gms/internal/ads/Mp;I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Hp;->K:Lcom/google/android/gms/internal/ads/jC;

    .line 116
    .line 117
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Fw;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 118
    .line 119
    .line 120
    :cond_0
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "com.google.android.gms.ads.internal.request.IAdsServiceResponseListener"

    .line 4
    .line 5
    if-eq p1, v1, :cond_6

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq p1, v3, :cond_3

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq p1, v3, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/Jc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/ads/Jc;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/Pc;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    check-cast v0, Lcom/google/android/gms/internal/ads/Pc;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/Oc;

    .line 43
    .line 44
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/Oc;-><init>(Landroid/os/IBinder;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Hp;->R1(Lcom/google/android/gms/internal/ads/Jc;Lcom/google/android/gms/internal/ads/Pc;)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/Hc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    .line 56
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/ads/Hc;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Pc;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    check-cast p1, Lcom/google/android/gms/internal/ads/Pc;

    .line 78
    .line 79
    :cond_5
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/Hc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    .line 85
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/google/android/gms/internal/ads/Hc;

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-nez v3, :cond_7

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_7
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/Pc;

    .line 103
    .line 104
    if-eqz v2, :cond_8

    .line 105
    .line 106
    check-cast v0, Lcom/google/android/gms/internal/ads/Pc;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/Oc;

    .line 110
    .line 111
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/Oc;-><init>(Landroid/os/IBinder;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Hp;->o1(Lcom/google/android/gms/internal/ads/Hc;Lcom/google/android/gms/internal/ads/Pc;)V

    .line 118
    .line 119
    .line 120
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    .line 122
    .line 123
    :goto_4
    return v1
.end method

.method public final z3(Lcom/google/android/gms/internal/ads/Jc;I)Lcom/google/android/gms/internal/ads/JB;
    .locals 8

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/Ip;

    .line 2
    .line 3
    new-instance v3, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Jc;->I:Landroid/os/Bundle;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Jc;->G:Ljava/lang/String;

    .line 43
    .line 44
    iget v2, p1, Lcom/google/android/gms/internal/ads/Jc;->H:I

    .line 45
    .line 46
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/Jc;->J:[B

    .line 47
    .line 48
    const-string v5, ""

    .line 49
    .line 50
    iget-boolean v7, p1, Lcom/google/android/gms/internal/ads/Jc;->K:Z

    .line 51
    .line 52
    move-object v0, p2

    .line 53
    move v6, v7

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Ip;-><init>(Ljava/lang/String;ILjava/util/HashMap;[BLjava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/google/android/gms/internal/ads/Pu;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Pu;-><init>(Lcom/google/android/gms/internal/ads/Jc;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hp;->I:Lcom/google/android/gms/internal/ads/xg;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/google/android/gms/internal/ads/yg;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xg;->a:Lcom/google/android/gms/internal/ads/Bg;

    .line 70
    .line 71
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/yg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Pu;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hp;->K:Lcom/google/android/gms/internal/ads/jC;

    .line 75
    .line 76
    if-eqz v7, :cond_4

    .line 77
    .line 78
    sget-object v1, Lcom/google/android/gms/internal/ads/y8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Jc;->G:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_4

    .line 108
    .line 109
    new-instance v3, Lcom/google/android/gms/internal/ads/tz;

    .line 110
    .line 111
    const/16 v4, 0x3b

    .line 112
    .line 113
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/tz;-><init>(C)V

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Xu;->j(Lcom/google/android/gms/internal/ads/tz;)Lcom/google/android/gms/internal/ads/Xu;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/Xu;->t(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_4

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_3

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yg;->a()Lcom/google/android/gms/internal/ads/vu;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    new-instance v1, Lorg/json/JSONObject;

    .line 150
    .line 151
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v3, Landroid/os/Bundle;

    .line 155
    .line 156
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/vu;->a(Landroid/os/Bundle;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/WB;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    new-instance v1, Lcom/google/android/gms/internal/ads/Sc;

    .line 164
    .line 165
    const/4 v3, 0x2

    .line 166
    invoke-direct {v1, p2, v3}, Lcom/google/android/gms/internal/ads/Sc;-><init>(Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    goto :goto_2

    .line 174
    :cond_4
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :goto_2
    iget p2, v2, Lcom/google/android/gms/internal/ads/yg;->a:I

    .line 179
    .line 180
    packed-switch p2, :pswitch_data_0

    .line 181
    .line 182
    .line 183
    iget-object p2, v2, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/MJ;

    .line 184
    .line 185
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    check-cast p2, Lcom/google/android/gms/internal/ads/Kw;

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :pswitch_0
    iget-object p2, v2, Lcom/google/android/gms/internal/ads/yg;->d:Lcom/google/android/gms/internal/ads/MJ;

    .line 193
    .line 194
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Lcom/google/android/gms/internal/ads/Kw;

    .line 199
    .line 200
    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/Om;

    .line 201
    .line 202
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hp;->G:Landroid/content/Context;

    .line 203
    .line 204
    const-string v3, ""

    .line 205
    .line 206
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Om;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sget-object v2, Lcom/google/android/gms/internal/ads/Iw;->O:Lcom/google/android/gms/internal/ads/Iw;

    .line 210
    .line 211
    invoke-virtual {p2, p1, v2}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    new-instance p2, Lcom/google/android/gms/internal/ads/hh;

    .line 224
    .line 225
    const/16 v1, 0xd

    .line 226
    .line 227
    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    return-object p1

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
