.class public final LC2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/e;
.implements Lw2/c;
.implements LI2/a;
.implements Lp3/c;
.implements Lp3/f;
.implements Lcom/google/android/gms/internal/ads/w3;
.implements Lcom/google/android/gms/internal/ads/uy;
.implements Lcom/google/android/gms/internal/ads/dC;
.implements LK3/p;
.implements Lg4/b;
.implements LD3/h;
.implements LZ3/X;
.implements Lv4/d;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 6
    iput v0, p0, LC2/g;->G:I

    .line 7
    new-instance v0, LA2/f;

    invoke-direct {v0, p0}, LA2/f;-><init>(LC2/g;)V

    iput-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LE3/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 2
    iput v0, p0, LC2/g;->G:I

    .line 3
    iput-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 9
    iput v0, p0, LC2/g;->G:I

    .line 10
    iput-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LC2/g;->G:I

    iput-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    return-void
.end method

.method public static r(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 4

    .line 1
    const-string v0, "data:image"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x2c

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, ";base64"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v0, "Not a base64 image data URL."

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string v0, "Missing comma in data URL."

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string v0, "Not a valid image data URL."

    .line 66
    .line 67
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public static s(Landroid/content/Context;Lf3/f;Lx3/a;)V
    .locals 7

    .line 1
    sget-object v2, Lf3/a;->H:Lf3/a;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/p8;->h:Lcom/google/android/gms/internal/ads/f8;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->xa:Lcom/google/android/gms/internal/ads/J7;

    .line 21
    .line 22
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 23
    .line 24
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lp3/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    new-instance v1, Ln2/t;

    .line 42
    .line 43
    invoke-direct {v1, p0, p1, p2}, Ln2/t;-><init>(Landroid/content/Context;Lf3/f;Lx3/a;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    :goto_0
    new-instance v6, Lcom/google/android/gms/internal/ads/xc;

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    :goto_1
    move-object v3, p1

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object p1, p1, Lf3/f;->a:Ll3/G0;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :goto_2
    const/4 v5, 0x0

    .line 61
    const/4 v4, 0x0

    .line 62
    move-object v0, v6

    .line 63
    move-object v1, p0

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/xc;->r(Lx3/a;)V

    .line 68
    .line 69
    .line 70
    :goto_3
    return-void
.end method


# virtual methods
.method public final A([B)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final B([I)V
    .locals 8

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE3/j;

    .line 4
    .line 5
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LE3/h;

    .line 22
    .line 23
    check-cast v1, LF3/k;

    .line 24
    .line 25
    iget v2, v1, LF3/k;->a:I

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_1
    array-length v4, p1

    .line 38
    iget-object v5, v1, LF3/k;->b:Ljava/lang/Object;

    .line 39
    .line 40
    if-ge v3, v4, :cond_1

    .line 41
    .line 42
    aget v4, p1, v3

    .line 43
    .line 44
    check-cast v5, LE3/d;

    .line 45
    .line 46
    iget-object v6, v5, LE3/d;->f:LE3/w;

    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v6, v7}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v6, v5, LE3/d;->e:Landroid/util/SparseIntArray;

    .line 56
    .line 57
    const/4 v7, -0x1

    .line 58
    invoke-virtual {v6, v4, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ne v4, v7, :cond_0

    .line 63
    .line 64
    invoke-virtual {v5}, LE3/d;->d()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    check-cast v5, LE3/d;

    .line 82
    .line 83
    invoke-virtual {v5}, LE3/d;->h()V

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, LH3/a;->f(Ljava/util/AbstractCollection;)[I

    .line 87
    .line 88
    .line 89
    invoke-static {v5}, LE3/d;->a(LE3/d;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, LE3/d;->f()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, LC2/g;->G:I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, LW3/b;

    .line 10
    .line 11
    check-cast p2, Lg4/i;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, LW3/d;

    .line 18
    .line 19
    new-instance v1, LW3/g;

    .line 20
    .line 21
    invoke-direct {v1, p2}, LW3/g;-><init>(Lg4/i;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v2, "com.google.android.gms.appset.internal.IAppSetService"

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget v2, LW3/a;->a:I

    .line 37
    .line 38
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    const/16 v2, 0x4f45

    .line 42
    .line 43
    invoke-static {v2, p2}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {v2, p2}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :try_start_0
    iget-object p1, p1, LW3/d;->G:Landroid/os/IBinder;

    .line 58
    .line 59
    invoke-interface {p1, v3, p2, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_0
    check-cast p1, LN3/c;

    .line 81
    .line 82
    check-cast p2, Lg4/i;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, LN3/a;

    .line 89
    .line 90
    iget-object v1, p0, LC2/g;->H:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Lcom/google/android/gms/common/internal/t;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/y5;->I:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget v5, LX3/a;->a:I

    .line 107
    .line 108
    if-nez v1, :cond_0

    .line 109
    .line 110
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, v4, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    .line 119
    .line 120
    :goto_0
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/y5;->H:Landroid/os/IBinder;

    .line 121
    .line 122
    invoke-interface {p1, v3, v4, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v2}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :pswitch_1
    check-cast p1, LH3/y;

    .line 138
    .line 139
    check-cast p2, Lg4/i;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, LH3/f;

    .line 146
    .line 147
    iget-object v1, p0, LC2/g;->H:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, LC3/F;

    .line 150
    .line 151
    iget-object v1, v1, LC3/F;->a:LC3/E;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/cast/u;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 158
    .line 159
    .line 160
    const/16 v1, 0x12

    .line 161
    .line 162
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/y5;->i2(ILandroid/os/Parcel;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, LH3/f;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const/16 v1, 0x11

    .line 176
    .line 177
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->i2(ILandroid/os/Parcel;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, v2}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(LD3/f;)V
    .locals 4

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v3, "onSessionStarting"

    .line 9
    .line 10
    invoke-virtual {v0, v3, v2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, LC2/g;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lcom/google/android/gms/internal/cast/a0;

    .line 16
    .line 17
    iput-object p1, v2, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 18
    .line 19
    iget-object p1, v2, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-array p1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v1, "Start a session while there\'s already an active session. Create a new one."

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, v0, LH3/b;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a0;->d()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 46
    .line 47
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/c0;->b(Lcom/google/android/gms/internal/cast/b0;)Lcom/google/android/gms/internal/cast/r0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget p1, p1, Lcom/google/android/gms/internal/cast/b0;->j:I

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    if-ne p1, v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/r0;->e()Lcom/google/android/gms/internal/cast/n0;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/n0;->m(Lcom/google/android/gms/internal/cast/n0;)Lcom/google/android/gms/internal/cast/m0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p1, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 72
    .line 73
    check-cast v1, Lcom/google/android/gms/internal/cast/n0;

    .line 74
    .line 75
    const/16 v2, 0x11

    .line 76
    .line 77
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/n0;->r(Lcom/google/android/gms/internal/cast/n0;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/google/android/gms/internal/cast/n0;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/r0;->f(Lcom/google/android/gms/internal/cast/n0;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/google/android/gms/internal/cast/s0;

    .line 94
    .line 95
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lcom/google/android/gms/internal/cast/a0;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 100
    .line 101
    const/16 v1, 0xdd

    .line 102
    .line 103
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Lw0/j;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1, p1}, Lw0/j;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/y3;)V
    .locals 1

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/te;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e(LD3/f;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, LD3/c;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v2, v3, v4

    .line 16
    .line 17
    const-string v2, "onSessionResumed with wasSuspended = %b"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Lcom/google/android/gms/internal/cast/a0;

    .line 24
    .line 25
    iput-object p1, v1, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/a0;->c()V

    .line 28
    .line 29
    .line 30
    move-object p1, v0

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 40
    .line 41
    iget-object v1, p1, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/c0;->b(Lcom/google/android/gms/internal/cast/b0;)Lcom/google/android/gms/internal/cast/r0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/r0;->e()Lcom/google/android/gms/internal/cast/n0;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/n0;->m(Lcom/google/android/gms/internal/cast/n0;)Lcom/google/android/gms/internal/cast/m0;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 58
    .line 59
    .line 60
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 61
    .line 62
    check-cast v2, Lcom/google/android/gms/internal/cast/n0;

    .line 63
    .line 64
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/cast/n0;->p(Lcom/google/android/gms/internal/cast/n0;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 68
    .line 69
    .line 70
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 71
    .line 72
    check-cast p2, Lcom/google/android/gms/internal/cast/s0;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/google/android/gms/internal/cast/n0;

    .line 79
    .line 80
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/cast/s0;->p(Lcom/google/android/gms/internal/cast/s0;Lcom/google/android/gms/internal/cast/n0;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/google/android/gms/internal/cast/s0;

    .line 88
    .line 89
    move-object p2, v0

    .line 90
    check-cast p2, Lcom/google/android/gms/internal/cast/a0;

    .line 91
    .line 92
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 93
    .line 94
    const/16 v1, 0xe3

    .line 95
    .line 96
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 97
    .line 98
    .line 99
    move-object p1, v0

    .line 100
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/a0;->b(Lcom/google/android/gms/internal/cast/a0;)V

    .line 103
    .line 104
    .line 105
    check-cast v0, Lcom/google/android/gms/internal/cast/a0;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/a0;->e()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final f(LD3/f;I)V
    .locals 5

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, LD3/c;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v2, v3, v4

    .line 16
    .line 17
    const-string v2, "onSessionSuspended with reason = %d"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Lcom/google/android/gms/internal/cast/a0;

    .line 24
    .line 25
    iput-object p1, v1, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/a0;->c()V

    .line 28
    .line 29
    .line 30
    move-object p1, v0

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 40
    .line 41
    iget-object v1, p1, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 44
    .line 45
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/cast/c0;->a(Lcom/google/android/gms/internal/cast/b0;I)Lcom/google/android/gms/internal/cast/s0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    move-object p2, v0

    .line 50
    check-cast p2, Lcom/google/android/gms/internal/cast/a0;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 53
    .line 54
    const/16 v1, 0xe1

    .line 55
    .line 56
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 57
    .line 58
    .line 59
    move-object p1, v0

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/a0;->b(Lcom/google/android/gms/internal/cast/a0;)V

    .line 63
    .line 64
    .line 65
    check-cast v0, Lcom/google/android/gms/internal/cast/a0;

    .line 66
    .line 67
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/a0;->e:LX3/d;

    .line 68
    .line 69
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/a0;->d:Lcom/google/android/gms/internal/cast/X;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final bridge synthetic g(LD3/f;I)V
    .locals 2

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/cast/a0;

    .line 5
    .line 6
    check-cast p1, LD3/c;

    .line 7
    .line 8
    iput-object p1, v1, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/cast/a0;

    .line 11
    .line 12
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/a0;->a(Lcom/google/android/gms/internal/cast/a0;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h(LD3/f;Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    check-cast p1, LD3/c;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 6
    .line 7
    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object p2, v3, v0

    .line 10
    .line 11
    const-string v4, "onSessionResuming with sessionId = %s"

    .line 12
    .line 13
    invoke-virtual {v2, v4, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, LC2/g;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lcom/google/android/gms/internal/cast/a0;

    .line 19
    .line 20
    iput-object p1, v3, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 21
    .line 22
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/a0;->f:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/cast/a0;->g(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    new-array p1, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string p2, "Use the existing ApplicationAnalyticsSession if it is available and valid."

    .line 33
    .line 34
    invoke-virtual {v2, p2, p1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/a0;->b:Lcom/google/android/gms/internal/cast/c;

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    sget-object p1, Lcom/google/android/gms/internal/cast/b0;->k:LH3/b;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/cast/b0;

    .line 52
    .line 53
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/cast/b0;-><init>(Lcom/google/android/gms/internal/cast/c;)V

    .line 54
    .line 55
    .line 56
    const-string v6, "is_output_switcher_enabled"

    .line 57
    .line 58
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iput-boolean v6, v5, Lcom/google/android/gms/internal/cast/b0;->i:Z

    .line 63
    .line 64
    const-string v6, "application_id"

    .line 65
    .line 66
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    const-string v7, ""

    .line 73
    .line 74
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/b0;->b:Ljava/lang/String;

    .line 79
    .line 80
    const-string v6, "receiver_metrics_id"

    .line 81
    .line 82
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_2

    .line 87
    .line 88
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/b0;->c:Ljava/lang/String;

    .line 93
    .line 94
    const-string v6, "analytics_session_id"

    .line 95
    .line 96
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_2

    .line 101
    .line 102
    const-wide/16 v8, 0x0

    .line 103
    .line 104
    invoke-interface {p1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v8

    .line 108
    iput-wide v8, v5, Lcom/google/android/gms/internal/cast/b0;->d:J

    .line 109
    .line 110
    const-string v6, "event_sequence_number"

    .line 111
    .line 112
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_2

    .line 117
    .line 118
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    iput v6, v5, Lcom/google/android/gms/internal/cast/b0;->e:I

    .line 123
    .line 124
    const-string v6, "receiver_session_id"

    .line 125
    .line 126
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_2

    .line 131
    .line 132
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/b0;->f:Ljava/lang/String;

    .line 137
    .line 138
    const-string v6, "device_capabilities"

    .line 139
    .line 140
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    iput v6, v5, Lcom/google/android/gms/internal/cast/b0;->g:I

    .line 145
    .line 146
    const-string v6, "device_model_name"

    .line 147
    .line 148
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/b0;->h:Ljava/lang/String;

    .line 153
    .line 154
    const-string v6, "analytics_session_start_type"

    .line 155
    .line 156
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iput p1, v5, Lcom/google/android/gms/internal/cast/b0;->j:I

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 164
    :goto_1
    iput-object v5, v3, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 165
    .line 166
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/cast/a0;->g(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    const-wide/16 v5, 0x1

    .line 171
    .line 172
    if-eqz p1, :cond_3

    .line 173
    .line 174
    new-array p1, v0, [Ljava/lang/Object;

    .line 175
    .line 176
    const-string p2, "Use the restored ApplicationAnalyticsSession if it is valid."

    .line 177
    .line 178
    invoke-virtual {v2, p2, p1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 187
    .line 188
    iget-wide p1, p1, Lcom/google/android/gms/internal/cast/b0;->d:J

    .line 189
    .line 190
    add-long/2addr p1, v5

    .line 191
    sput-wide p1, Lcom/google/android/gms/internal/cast/b0;->l:J

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    .line 195
    .line 196
    const-string v7, "The restored ApplicationAnalyticsSession is not valid, create a new one."

    .line 197
    .line 198
    invoke-virtual {v2, v7, p1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    new-instance p1, Lcom/google/android/gms/internal/cast/b0;

    .line 202
    .line 203
    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/cast/b0;-><init>(Lcom/google/android/gms/internal/cast/c;)V

    .line 204
    .line 205
    .line 206
    sget-wide v7, Lcom/google/android/gms/internal/cast/b0;->l:J

    .line 207
    .line 208
    add-long/2addr v7, v5

    .line 209
    sput-wide v7, Lcom/google/android/gms/internal/cast/b0;->l:J

    .line 210
    .line 211
    iput-object p1, v3, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 212
    .line 213
    iget-object v2, v3, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 214
    .line 215
    if-eqz v2, :cond_4

    .line 216
    .line 217
    iget-object v2, v2, LD3/c;->g:Lcom/google/android/gms/internal/cast/q;

    .line 218
    .line 219
    iget-boolean v2, v2, Lcom/google/android/gms/internal/cast/q;->L:Z

    .line 220
    .line 221
    if-eqz v2, :cond_4

    .line 222
    .line 223
    const/4 v0, 0x1

    .line 224
    :cond_4
    iput-boolean v0, p1, Lcom/google/android/gms/internal/cast/b0;->i:Z

    .line 225
    .line 226
    sget-object v0, LD3/a;->k:LH3/b;

    .line 227
    .line 228
    const-string v0, "Must be called from the main thread."

    .line 229
    .line 230
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sget-object v2, LD3/a;->m:LD3/a;

    .line 234
    .line 235
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v2, LD3/a;->d:LD3/b;

    .line 242
    .line 243
    iget-object v0, v0, LD3/b;->G:Ljava/lang/String;

    .line 244
    .line 245
    iput-object v0, p1, Lcom/google/android/gms/internal/cast/b0;->b:Ljava/lang/String;

    .line 246
    .line 247
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 248
    .line 249
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/b0;->f:Ljava/lang/String;

    .line 253
    .line 254
    :goto_2
    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 257
    .line 258
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 259
    .line 260
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 266
    .line 267
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 268
    .line 269
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 270
    .line 271
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/c0;->b(Lcom/google/android/gms/internal/cast/b0;)Lcom/google/android/gms/internal/cast/r0;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/r0;->e()Lcom/google/android/gms/internal/cast/n0;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/n0;->m(Lcom/google/android/gms/internal/cast/n0;)Lcom/google/android/gms/internal/cast/m0;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 284
    .line 285
    .line 286
    iget-object v0, p2, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 287
    .line 288
    check-cast v0, Lcom/google/android/gms/internal/cast/n0;

    .line 289
    .line 290
    const/16 v2, 0xa

    .line 291
    .line 292
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cast/n0;->r(Lcom/google/android/gms/internal/cast/n0;I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    check-cast p2, Lcom/google/android/gms/internal/cast/n0;

    .line 300
    .line 301
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/r0;->f(Lcom/google/android/gms/internal/cast/n0;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/r0;->e()Lcom/google/android/gms/internal/cast/n0;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/n0;->m(Lcom/google/android/gms/internal/cast/n0;)Lcom/google/android/gms/internal/cast/m0;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 313
    .line 314
    .line 315
    iget-object v0, p2, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 316
    .line 317
    check-cast v0, Lcom/google/android/gms/internal/cast/n0;

    .line 318
    .line 319
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/n0;->p(Lcom/google/android/gms/internal/cast/n0;Z)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 323
    .line 324
    .line 325
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 326
    .line 327
    check-cast v0, Lcom/google/android/gms/internal/cast/s0;

    .line 328
    .line 329
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    check-cast p2, Lcom/google/android/gms/internal/cast/n0;

    .line 334
    .line 335
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/s0;->p(Lcom/google/android/gms/internal/cast/s0;Lcom/google/android/gms/internal/cast/n0;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    check-cast p1, Lcom/google/android/gms/internal/cast/s0;

    .line 343
    .line 344
    iget-object p2, p0, LC2/g;->H:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast p2, Lcom/google/android/gms/internal/cast/a0;

    .line 347
    .line 348
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 349
    .line 350
    const/16 v0, 0xe2

    .line 351
    .line 352
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 353
    .line 354
    .line 355
    return-void
.end method

.method public final i(LZ3/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final bridge synthetic j(LD3/f;I)V
    .locals 2

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/cast/a0;

    .line 5
    .line 6
    check-cast p1, LD3/c;

    .line 7
    .line 8
    iput-object p1, v1, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/cast/a0;

    .line 11
    .line 12
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/a0;->a(Lcom/google/android/gms/internal/cast/a0;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(Ly2/D;Lw2/l;)Ly2/D;
    .locals 1

    .line 1
    iget-object p2, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Landroid/content/res/Resources;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, LF2/d;

    .line 10
    .line 11
    invoke-direct {v0, p2, p1}, LF2/d;-><init>(Landroid/content/res/Resources;Ly2/D;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :goto_0
    return-object p1
.end method

.method public final l(LD3/f;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, LD3/c;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object p2, v2, v3

    .line 12
    .line 13
    const-string v3, "onSessionStarted with sessionId = %s"

    .line 14
    .line 15
    invoke-virtual {v1, v3, v2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Lcom/google/android/gms/internal/cast/a0;

    .line 20
    .line 21
    iput-object p1, v1, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/a0;->c()V

    .line 24
    .line 25
    .line 26
    move-object p1, v0

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 30
    .line 31
    iput-object p2, v1, Lcom/google/android/gms/internal/cast/b0;->f:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/c0;->b(Lcom/google/android/gms/internal/cast/b0;)Lcom/google/android/gms/internal/cast/r0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/cast/s0;

    .line 44
    .line 45
    move-object p2, v0

    .line 46
    check-cast p2, Lcom/google/android/gms/internal/cast/a0;

    .line 47
    .line 48
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 49
    .line 50
    const/16 v1, 0xde

    .line 51
    .line 52
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 53
    .line 54
    .line 55
    move-object p1, v0

    .line 56
    check-cast p1, Lcom/google/android/gms/internal/cast/a0;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/a0;->b(Lcom/google/android/gms/internal/cast/a0;)V

    .line 59
    .line 60
    .line 61
    check-cast v0, Lcom/google/android/gms/internal/cast/a0;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/a0;->e()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final m(Landroid/util/JsonWriter;)V
    .locals 3

    .line 1
    sget-object v0, Lp3/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    const-string v0, "params"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, [B

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v2, 0x2710

    .line 23
    .line 24
    if-ge v1, v2, :cond_0

    .line 25
    .line 26
    const-string v2, "body"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v2, "MD5"

    .line 37
    .line 38
    invoke-static {v0, v2}, Lp3/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v2, "bodydigest"

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    const-string v0, "bodylength"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    int-to-long v1, v1

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final n(Ljava/lang/Object;Ljava/io/File;Lw2/l;)Z
    .locals 4

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    const-string p3, "StreamEncoder"

    .line 4
    .line 5
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lz2/h;

    .line 8
    .line 9
    const/high16 v1, 0x10000

    .line 10
    .line 11
    const-class v2, [B

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lz2/h;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 22
    .line 23
    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    .line 26
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 v2, -0x1

    .line 31
    if-eq p2, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    move-object v2, v3

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception p1

    .line 41
    move-object v2, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    .line 48
    .line 49
    :catch_1
    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Lz2/h;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lz2/h;->h(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    goto :goto_2

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    goto :goto_3

    .line 60
    :catch_2
    move-exception p1

    .line 61
    :goto_1
    const/4 p2, 0x3

    .line 62
    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    const-string p2, "Failed to encode data onto the OutputStream"

    .line 69
    .line 70
    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    .line 72
    .line 73
    :cond_1
    if-eqz v2, :cond_2

    .line 74
    .line 75
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 76
    .line 77
    .line 78
    :catch_3
    :cond_2
    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lz2/h;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lz2/h;->h(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    return v1

    .line 86
    :goto_3
    if-eqz v2, :cond_3

    .line 87
    .line 88
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 89
    .line 90
    .line 91
    :catch_4
    :cond_3
    iget-object p2, p0, LC2/g;->H:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p2, Lz2/h;

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Lz2/h;->h(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public final synthetic o(LD3/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/a0;

    .line 4
    .line 5
    check-cast p1, LD3/c;

    .line 6
    .line 7
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 8
    .line 9
    return-void
.end method

.method public final bridge synthetic q(LD3/f;I)V
    .locals 2

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/cast/a0;

    .line 5
    .line 6
    check-cast p1, LD3/c;

    .line 7
    .line 8
    iput-object p1, v1, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/cast/a0;

    .line 11
    .line 12
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/a0;->a(Lcom/google/android/gms/internal/cast/a0;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE3/j;

    .line 4
    .line 5
    iget-object v0, v0, LE3/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, LE3/j;

    .line 20
    .line 21
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, LE3/h;

    .line 38
    .line 39
    check-cast v1, LF3/k;

    .line 40
    .line 41
    iget v2, v1, LF3/k;->a:I

    .line 42
    .line 43
    packed-switch v2, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_0
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, LF3/l;

    .line 50
    .line 51
    invoke-virtual {v1}, LF3/l;->b()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    throw v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final then(Lg4/h;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LW3/i;

    .line 4
    .line 5
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_5

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Lg4/r;

    .line 13
    .line 14
    iget-boolean v1, v1, Lg4/r;->d:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lg4/h;->e()Ljava/lang/Exception;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v2, v1, Lcom/google/android/gms/common/api/h;

    .line 24
    .line 25
    if-eqz v2, :cond_5

    .line 26
    .line 27
    check-cast v1, Lcom/google/android/gms/common/api/h;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/google/android/gms/common/api/h;->G:Lcom/google/android/gms/common/api/Status;

    .line 30
    .line 31
    iget v1, v1, Lcom/google/android/gms/common/api/Status;->G:I

    .line 32
    .line 33
    const v2, 0xa7f9

    .line 34
    .line 35
    .line 36
    if-eq v1, v2, :cond_4

    .line 37
    .line 38
    const v2, 0xa7fa

    .line 39
    .line 40
    .line 41
    if-eq v1, v2, :cond_4

    .line 42
    .line 43
    const v2, 0xa7fb

    .line 44
    .line 45
    .line 46
    if-eq v1, v2, :cond_4

    .line 47
    .line 48
    const/16 v2, 0x11

    .line 49
    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const v0, 0xa7f8

    .line 54
    .line 55
    .line 56
    if-ne v1, v0, :cond_2

    .line 57
    .line 58
    new-instance p1, Ljava/lang/Exception;

    .line 59
    .line 60
    const-string v0, "Failed to get app set ID due to an internal error. Please try again later."

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->j(Ljava/lang/Exception;)Lg4/r;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/16 v0, 0xf

    .line 71
    .line 72
    if-eq v1, v0, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    .line 76
    .line 77
    const-string v0, "The operation to get app set ID timed out. Please try again later."

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->j(Ljava/lang/Exception;)Lg4/r;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    :goto_0
    iget-object p1, v0, LW3/i;->b:LW3/f;

    .line 88
    .line 89
    invoke-virtual {p1}, LW3/f;->a()Lg4/h;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_5
    :goto_1
    return-object p1
.end method

.method public final u(Lcom/google/android/gms/internal/ads/ez;)V
    .locals 4

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La/x;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ez;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->Na:Lcom/google/android/gms/internal/ads/J7;

    .line 17
    .line 18
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 19
    .line 20
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iput-object v1, v0, La/x;->b:Ljava/lang/Object;

    .line 35
    .line 36
    :cond_0
    iget p1, p1, Lcom/google/android/gms/internal/ads/ez;->a:I

    .line 37
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    :pswitch_0
    goto :goto_0

    .line 42
    :pswitch_1
    new-instance v1, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v2, "error"

    .line 52
    .line 53
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string p1, "onLMDOverlayFailedToOpen"

    .line 57
    .line 58
    invoke-virtual {v0, p1, v1}, La/x;->d(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_2
    const/4 p1, 0x0

    .line 63
    iput-object p1, v0, La/x;->b:Ljava/lang/Object;

    .line 64
    .line 65
    iput-object p1, v0, La/x;->c:Ljava/lang/Object;

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput-boolean p1, v0, La/x;->a:Z

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_3
    new-instance p1, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "onLMDOverlayClose"

    .line 77
    .line 78
    invoke-virtual {v0, v1, p1}, La/x;->d(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_4
    new-instance p1, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "onLMDOverlayClicked"

    .line 88
    .line 89
    invoke-virtual {v0, v1, p1}, La/x;->d(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_5
    new-instance p1, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "onLMDOverlayOpened"

    .line 99
    .line 100
    invoke-virtual {v0, v1, p1}, La/x;->d(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x1fd8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final v([I)V
    .locals 4

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE3/j;

    .line 4
    .line 5
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LE3/h;

    .line 22
    .line 23
    check-cast v1, LF3/k;

    .line 24
    .line 25
    iget v2, v1, LF3/k;->a:I

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, LE3/d;

    .line 34
    .line 35
    invoke-static {p1}, LH3/a;->d([I)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, v1, LE3/d;->d:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, LE3/d;->h()V

    .line 49
    .line 50
    .line 51
    iget-object v3, v1, LE3/d;->f:LE3/w;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/util/LruCache;->evictAll()V

    .line 54
    .line 55
    .line 56
    iget-object v3, v1, LE3/d;->g:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 59
    .line 60
    .line 61
    iput-object v2, v1, LE3/d;->d:Ljava/util/List;

    .line 62
    .line 63
    invoke-static {v1}, LE3/d;->b(LE3/d;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, LE3/d;->g()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, LE3/d;->f()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final w([II)V
    .locals 5

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE3/j;

    .line 4
    .line 5
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LE3/h;

    .line 22
    .line 23
    check-cast v1, LF3/k;

    .line 24
    .line 25
    iget v2, v1, LF3/k;->a:I

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    if-nez p2, :cond_0

    .line 32
    .line 33
    iget-object v2, v1, LF3/k;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, LE3/d;

    .line 36
    .line 37
    iget-object v2, v2, LE3/d;->d:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v2, v1, LF3/k;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, LE3/d;

    .line 47
    .line 48
    iget-object v2, v2, LE3/d;->e:Landroid/util/SparseIntArray;

    .line 49
    .line 50
    const/4 v3, -0x1

    .line 51
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-ne v2, v3, :cond_1

    .line 56
    .line 57
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, LE3/d;

    .line 60
    .line 61
    invoke-virtual {v1}, LE3/d;->d()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    iget-object v3, v1, LF3/k;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v3, LE3/d;

    .line 68
    .line 69
    invoke-virtual {v3}, LE3/d;->h()V

    .line 70
    .line 71
    .line 72
    iget-object v3, v1, LF3/k;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v3, LE3/d;

    .line 75
    .line 76
    iget-object v3, v3, LE3/d;->d:Ljava/util/List;

    .line 77
    .line 78
    invoke-static {p1}, LH3/a;->d([I)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-interface {v3, v2, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 83
    .line 84
    .line 85
    iget-object v2, v1, LF3/k;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, LE3/d;

    .line 88
    .line 89
    invoke-static {v2}, LE3/d;->b(LE3/d;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, v1, LF3/k;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, LE3/d;

    .line 95
    .line 96
    iget-object v3, v2, LE3/d;->m:Ljava/util/Set;

    .line 97
    .line 98
    monitor-enter v3

    .line 99
    :try_start_0
    iget-object v2, v2, LE3/d;->m:Ljava/util/Set;

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_2

    .line 110
    .line 111
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v1, LE3/d;

    .line 115
    .line 116
    invoke-virtual {v1}, LE3/d;->f()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const/4 p1, 0x0

    .line 130
    throw p1

    .line 131
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    throw p1

    .line 133
    :cond_3
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final x([LC3/p;)V
    .locals 10

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE3/j;

    .line 4
    .line 5
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LE3/h;

    .line 22
    .line 23
    check-cast v1, LF3/k;

    .line 24
    .line 25
    iget v2, v1, LF3/k;->a:I

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    new-instance v2, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, LE3/d;

    .line 39
    .line 40
    iget-object v3, v1, LE3/d;->g:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_1
    array-length v4, p1

    .line 47
    iget-object v5, v1, LE3/d;->e:Landroid/util/SparseIntArray;

    .line 48
    .line 49
    const/4 v6, -0x1

    .line 50
    if-ge v3, v4, :cond_1

    .line 51
    .line 52
    aget-object v4, p1, v3

    .line 53
    .line 54
    iget v7, v4, LC3/p;->H:I

    .line 55
    .line 56
    iget-object v8, v1, LE3/d;->f:LE3/w;

    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v8, v9, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-ne v4, v6, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1}, LE3/d;->d()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object v3, v1, LE3/d;->g:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_3

    .line 96
    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eq v7, v6, :cond_2

    .line 112
    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 122
    .line 123
    .line 124
    new-instance v3, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, LE3/d;->h()V

    .line 133
    .line 134
    .line 135
    invoke-static {v3}, LH3/a;->f(Ljava/util/AbstractCollection;)[I

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, LE3/d;->a(LE3/d;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, LE3/d;->f()V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_4
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final y([I)V
    .locals 7

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE3/j;

    .line 4
    .line 5
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LE3/h;

    .line 22
    .line 23
    check-cast v1, LF3/k;

    .line 24
    .line 25
    iget v2, v1, LF3/k;->a:I

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_1
    array-length v4, p1

    .line 38
    if-ge v3, v4, :cond_1

    .line 39
    .line 40
    aget v4, p1, v3

    .line 41
    .line 42
    iget-object v5, v1, LF3/k;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, LE3/d;

    .line 45
    .line 46
    iget-object v5, v5, LE3/d;->f:LE3/w;

    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v5, v6}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v5, v1, LF3/k;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v5, LE3/d;

    .line 58
    .line 59
    iget-object v5, v5, LE3/d;->e:Landroid/util/SparseIntArray;

    .line 60
    .line 61
    const/4 v6, -0x1

    .line 62
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-ne v5, v6, :cond_0

    .line 67
    .line 68
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, LE3/d;

    .line 71
    .line 72
    invoke-virtual {v1}, LE3/d;->d()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object v6, v1, LF3/k;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v6, LE3/d;

    .line 79
    .line 80
    iget-object v6, v6, LE3/d;->e:Landroid/util/SparseIntArray;

    .line 81
    .line 82
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 83
    .line 84
    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, v1, LF3/k;->b:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v3, LE3/d;

    .line 108
    .line 109
    invoke-virtual {v3}, LE3/d;->h()V

    .line 110
    .line 111
    .line 112
    iget-object v3, v1, LF3/k;->b:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v3, LE3/d;

    .line 115
    .line 116
    iget-object v3, v3, LE3/d;->d:Ljava/util/List;

    .line 117
    .line 118
    invoke-static {p1}, LH3/a;->d([I)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    iget-object v3, v1, LF3/k;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v3, LE3/d;

    .line 128
    .line 129
    invoke-static {v3}, LE3/d;->b(LE3/d;)V

    .line 130
    .line 131
    .line 132
    iget-object v3, v1, LF3/k;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v3, LE3/d;

    .line 135
    .line 136
    invoke-static {v2}, LH3/a;->f(Ljava/util/AbstractCollection;)[I

    .line 137
    .line 138
    .line 139
    iget-object v2, v3, LE3/d;->m:Ljava/util/Set;

    .line 140
    .line 141
    monitor-enter v2

    .line 142
    :try_start_0
    iget-object v3, v3, LE3/d;->m:Ljava/util/Set;

    .line 143
    .line 144
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-nez v4, :cond_3

    .line 153
    .line 154
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, LE3/d;

    .line 158
    .line 159
    invoke-virtual {v1}, LE3/d;->f()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :catchall_0
    move-exception p1

    .line 165
    goto :goto_2

    .line 166
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const/4 p1, 0x0

    .line 174
    throw p1

    .line 175
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    throw p1

    .line 177
    :cond_4
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final z(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 8

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE3/j;

    .line 4
    .line 5
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_6

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LE3/h;

    .line 22
    .line 23
    check-cast v1, LF3/k;

    .line 24
    .line 25
    iget v2, v1, LF3/k;->a:I

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    if-nez p3, :cond_0

    .line 38
    .line 39
    iget-object v4, v1, LF3/k;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v4, LE3/d;

    .line 42
    .line 43
    iget-object v4, v4, LE3/d;->d:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x0

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    iget-object v4, v1, LF3/k;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, LE3/d;

    .line 59
    .line 60
    iget-object v4, v4, LE3/d;->a:LH3/b;

    .line 61
    .line 62
    new-array v5, v5, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string v6, "Received a Queue Reordered message with an empty reordered items IDs list."

    .line 65
    .line 66
    iget-object v7, v4, LH3/b;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v4, v6, v5}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object v4, v1, LF3/k;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v4, LE3/d;

    .line 79
    .line 80
    iget-object v4, v4, LE3/d;->e:Landroid/util/SparseIntArray;

    .line 81
    .line 82
    invoke-virtual {v4, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-ne v4, v3, :cond_2

    .line 87
    .line 88
    iget-object v4, v1, LF3/k;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, LE3/d;

    .line 91
    .line 92
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    iget-object v4, v4, LE3/d;->e:Landroid/util/SparseIntArray;

    .line 103
    .line 104
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_4

    .line 116
    .line 117
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    iget-object v6, v1, LF3/k;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v6, LE3/d;

    .line 130
    .line 131
    iget-object v6, v6, LE3/d;->e:Landroid/util/SparseIntArray;

    .line 132
    .line 133
    invoke-virtual {v6, v5, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-ne v5, v3, :cond_3

    .line 138
    .line 139
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, LE3/d;

    .line 142
    .line 143
    invoke-virtual {v1}, LE3/d;->d()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    iget-object v2, v1, LF3/k;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v2, LE3/d;

    .line 159
    .line 160
    invoke-virtual {v2}, LE3/d;->h()V

    .line 161
    .line 162
    .line 163
    iget-object v2, v1, LF3/k;->b:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v2, LE3/d;

    .line 166
    .line 167
    iput-object p1, v2, LE3/d;->d:Ljava/util/List;

    .line 168
    .line 169
    invoke-static {v2}, LE3/d;->b(LE3/d;)V

    .line 170
    .line 171
    .line 172
    iget-object v2, v1, LF3/k;->b:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v2, LE3/d;

    .line 175
    .line 176
    iget-object v3, v2, LE3/d;->m:Ljava/util/Set;

    .line 177
    .line 178
    monitor-enter v3

    .line 179
    :try_start_0
    iget-object v2, v2, LE3/d;->m:Ljava/util/Set;

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-nez v4, :cond_5

    .line 190
    .line 191
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v1, LE3/d;

    .line 195
    .line 196
    invoke-virtual {v1}, LE3/d;->f()V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :catchall_0
    move-exception p1

    .line 202
    goto :goto_3

    .line 203
    :cond_5
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    const/4 p1, 0x0

    .line 211
    throw p1

    .line 212
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    throw p1

    .line 214
    :cond_6
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast v0, LZ3/c;

    new-instance v1, LZ3/d;

    .line 2
    iget-object v0, v0, LZ3/c;->a:LZ3/c;

    .line 3
    invoke-direct {v1, v0}, LZ3/d;-><init>(LZ3/c;)V

    return-object v1
.end method

.method public final zza(IJ)V
    .locals 3

    .line 31
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast v0, Lk3/f;

    .line 32
    iget-object v0, v0, Lk3/f;->N:Lcom/google/android/gms/internal/ads/cy;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/cy;->c(IJ)V

    return-void
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 11

    .line 4
    const/4 v0, 0x6

    const/4 v1, 0x0

    iget v2, p0, LC2/g;->G:I

    packed-switch v2, :pswitch_data_0

    .line 5
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/Tk;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/J;

    const/4 v3, 0x7

    invoke-direct {v2, p1, v3, v1}, Lcom/google/android/gms/internal/ads/J;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 8
    :pswitch_0
    sget-object v2, Lk3/l;->A:Lk3/l;

    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 9
    const-string v3, "SignalGeneratorImpl.initializeWebViewForSignalCollection"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast v2, Lv3/j;

    .line 10
    iget-object v2, v2, Lv3/j;->R:Lcom/google/android/gms/internal/ads/In;

    .line 11
    new-instance v3, Landroid/util/Pair;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sgf_reason"

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v5, "se"

    const-string v6, "query_g"

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    .line 13
    const-string v6, "BANNER"

    const-string v7, "ad_format"

    invoke-direct {v5, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "rtype"

    invoke-direct {v6, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const-string v8, "scar"

    const-string v9, "true"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/util/Pair;

    iget-object v9, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast v9, Lv3/j;

    .line 15
    iget-object v9, v9, Lv3/j;->j0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "sgi_rn"

    invoke-direct {v8, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v0, v0, [Landroid/util/Pair;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    aput-object v6, v0, v1

    const/4 v1, 0x4

    aput-object v7, v0, v1

    const/4 v1, 0x5

    aput-object v8, v0, v1

    const-string v1, "sgf"

    .line 17
    invoke-static {v2, v1, v0}, LU2/m;->m(Lcom/google/android/gms/internal/ads/In;Ljava/lang/String;[Landroid/util/Pair;)V

    const-string v0, "Failed to initialize webview for loading SDKCore. "

    .line 18
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->V8:Lcom/google/android/gms/internal/ads/J7;

    .line 20
    sget-object v0, Ll3/q;->d:Ll3/q;

    iget-object v1, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 21
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast p1, Lv3/j;

    .line 23
    iget-object p1, p1, Lv3/j;->i0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast p1, Lv3/j;

    .line 25
    iget-object p1, p1, Lv3/j;->j0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->W8:Lcom/google/android/gms/internal/ads/J7;

    .line 27
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast p1, Lv3/j;

    .line 30
    invoke-virtual {p1}, Lv3/j;->B3()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(IJLjava/lang/String;)V
    .locals 8

    .line 21
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast v0, Lk3/f;

    .line 22
    iget-object v1, v0, Lk3/f;->N:Lcom/google/android/gms/internal/ads/cy;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v3, v2, p2

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v7, p4

    .line 24
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/cy;->d(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg4/r;

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    iget v1, p0, LC2/g;->G:I

    packed-switch v1, :pswitch_data_0

    .line 2
    iget-object v0, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/Tk;

    check-cast p1, Lv3/r;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/Of;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/Of;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 5
    :pswitch_0
    check-cast p1, Lv3/r;

    const-string p1, "Initialized webview successfully for SDKCore."

    .line 6
    invoke-static {p1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->V8:Lcom/google/android/gms/internal/ads/J7;

    .line 8
    sget-object v1, Ll3/q;->d:Ll3/q;

    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast p1, Lv3/j;

    .line 11
    iget-object p1, p1, Lv3/j;->R:Lcom/google/android/gms/internal/ads/In;

    .line 12
    new-instance v1, Landroid/util/Pair;

    const-string v2, "se"

    const-string v3, "query_g"

    .line 13
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    .line 14
    const-string v3, "BANNER"

    const-string v4, "ad_format"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x6

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rtype"

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v5, "scar"

    const-string v6, "true"

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast v5, Lv3/j;

    new-instance v6, Landroid/util/Pair;

    .line 16
    iget-object v5, v5, Lv3/j;->j0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "sgi_rn"

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/util/Pair;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    aput-object v2, v5, v0

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    const/4 v1, 0x4

    aput-object v6, v5, v1

    const-string v1, "sgs"

    .line 18
    invoke-static {p1, v1, v5}, LU2/m;->m(Lcom/google/android/gms/internal/ads/In;Ljava/lang/String;[Landroid/util/Pair;)V

    iget-object p1, p0, LC2/g;->H:Ljava/lang/Object;

    check-cast p1, Lv3/j;

    .line 19
    iget-object p1, p1, Lv3/j;->i0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
