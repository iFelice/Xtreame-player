.class public abstract Lf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vH;
.implements Lcom/google/protobuf/p1;
.implements LY5/y;


# static fields
.field public static G:Ljava/lang/Boolean;

.field public static H:Ljava/lang/Boolean;

.field public static I:Ljava/lang/Boolean;

.field public static J:Ljava/lang/Boolean;

.field public static K:Ljava/lang/Boolean;

.field public static L:Ljava/lang/Boolean;


# direct methods
.method public static A(ILandroid/os/Parcel;)D
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {p1, p0, v0}, Lf/b;->q0(Landroid/os/Parcel;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public static A0(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "admob"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    return v1
.end method

.method public static B(ILandroid/os/Parcel;)F
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p1, p0, v0}, Lf/b;->q0(Landroid/os/Parcel;II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static B0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public static C(ILandroid/os/Parcel;)Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static C0(JLjava/lang/String;Z)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x1

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aput-object p0, p1, v0

    .line 15
    .line 16
    invoke-static {p2, p1}, LQ3/b;->I(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p3
.end method

.method public static D(ILandroid/os/Parcel;)I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p1, p0, v0}, Lf/b;->q0(Landroid/os/Parcel;II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static D0(III)V
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    if-lt p1, p0, :cond_1

    .line 4
    .line 5
    if-le p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    if-ltz p0, :cond_4

    .line 12
    .line 13
    if-gt p0, p2, :cond_4

    .line 14
    .line 15
    if-ltz p1, :cond_3

    .line 16
    .line 17
    if-le p1, p2, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 p2, 0x2

    .line 29
    new-array p2, p2, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aput-object p1, p2, v1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    aput-object p0, p2, p1

    .line 36
    .line 37
    const-string p0, "end index (%s) must not be less than start index (%s)"

    .line 38
    .line 39
    invoke-static {p0, p2}, LQ3/b;->I(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    const-string p0, "end index"

    .line 45
    .line 46
    invoke-static {p1, p2, p0}, Lf/b;->F0(IILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const-string p1, "start index"

    .line 52
    .line 53
    invoke-static {p0, p2, p1}, Lf/b;->F0(IILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_2
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public static E(ILandroid/os/Parcel;)J
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {p1, p0, v0}, Lf/b;->q0(Landroid/os/Parcel;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public static E0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public static F(ILandroid/os/Parcel;)I
    .locals 2

    .line 1
    const/high16 v0, -0x10000

    .line 2
    .line 3
    and-int v1, p0, v0

    .line 4
    .line 5
    if-eq v1, v0, :cond_0

    .line 6
    .line 7
    shr-int/lit8 p0, p0, 0x10

    .line 8
    .line 9
    int-to-char p0, p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static F0(IILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-gez p0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-array p1, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    aput-object p2, p1, v1

    .line 13
    .line 14
    aput-object p0, p1, v0

    .line 15
    .line 16
    const-string p0, "%s (%s) must not be negative"

    .line 17
    .line 18
    invoke-static {p0, p1}, LQ3/b;->I(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    if-ltz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v3, 0x3

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p2, v3, v1

    .line 37
    .line 38
    aput-object p0, v3, v0

    .line 39
    .line 40
    aput-object p1, v3, v2

    .line 41
    .line 42
    const-string p0, "%s (%s) must not be greater than size (%s)"

    .line 43
    .line 44
    invoke-static {p0, v3}, LQ3/b;->I(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "negative size: "

    .line 52
    .line 53
    invoke-static {p2, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static G(ILandroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr v0, p0

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static H(Landroid/os/Parcel;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p0}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-char v2, v0

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/16 v4, 0x4f45

    .line 15
    .line 16
    if-ne v2, v4, :cond_1

    .line 17
    .line 18
    add-int/2addr v1, v3

    .line 19
    if-lt v1, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gt v1, v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    new-instance v0, LM3/b;

    .line 29
    .line 30
    const-string v2, "Size read is invalid start="

    .line 31
    .line 32
    const-string v4, " end="

    .line 33
    .line 34
    invoke-static {v2, v3, v4, v1}, Lcom/google/protobuf/U2;->j(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1, p0}, LM3/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    new-instance v1, LM3/b;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "Expected object header. Got 0x"

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v0, p0}, LM3/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public static I(Landroid/os/Parcel;ILjava/lang/Boolean;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x4

    .line 5
    invoke-static {p0, p1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static J(Landroid/os/Parcel;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static K(Landroid/os/Parcel;I[B)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static L(Landroid/os/Parcel;ILandroid/os/IBinder;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static M(Landroid/os/Parcel;I[I)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static N(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static O(Landroid/os/Parcel;I[J)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static Q(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static R(Landroid/os/Parcel;I[Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static S(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static T(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    array-length v0, p2

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_2

    .line 15
    .line 16
    aget-object v3, p2, v2

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-interface {v3, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    .line 45
    .line 46
    sub-int v4, v3, v5

    .line 47
    .line 48
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    .line 53
    .line 54
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static U(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/os/Parcelable;

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x1

    .line 36
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-interface {v3, p0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    .line 52
    .line 53
    sub-int v4, v3, v5

    .line 54
    .line 55
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p1, p0}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static V(Ljava/lang/String;)F
    .locals 2

    .line 1
    const-string v0, "%"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/high16 v0, 0x42c80000    # 100.0f

    .line 25
    .line 26
    div-float/2addr p0, v0

    .line 27
    return p0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 29
    .line 30
    const-string v0, "Percentages must end with %"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static W(I)I
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x1

    .line 3
    new-array v2, v0, [I

    .line 4
    .line 5
    fill-array-data v2, :array_0

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_2

    .line 10
    .line 11
    aget v4, v2, v3

    .line 12
    .line 13
    add-int/lit8 v5, v4, -0x1

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    if-ne v5, p0, :cond_0

    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    add-int/2addr v3, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    throw p0

    .line 24
    :cond_2
    return v1

    .line 25
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public static X(ILandroid/os/Parcel;)I
    .locals 1

    .line 1
    const/high16 v0, -0x10000

    .line 2
    .line 3
    or-int/2addr p0, v0

    .line 4
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static Y(Ljava/util/Set;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_1
    add-int/2addr v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v1
.end method

.method public static Z(Ljava/lang/String;)J
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 4
    .line 5
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "GMT"

    .line 13
    .line 14
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-wide v0

    .line 30
    :catch_0
    move-exception v2

    .line 31
    const-string v3, "0"

    .line 32
    .line 33
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string v4, "Unable to parse dateStr: %s, falling back to 0"

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    const-string v3, "-1"

    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p0, v1, v0

    .line 53
    .line 54
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/B3;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string v0, "Volley"

    .line 59
    .line 60
    invoke-static {v0, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object p0, v1, v0

    .line 67
    .line 68
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/B3;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    const-wide/16 v0, 0x0

    .line 72
    .line 73
    return-wide v0
.end method

.method public static a0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cy;)Lcom/google/android/gms/internal/ads/Cy;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/gy;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/gy;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cy;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    :try_start_0
    iget-object p1, v6, Lcom/google/android/gms/internal/ads/gy;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 14
    .line 15
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    const-wide/32 p3, 0xc350

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3, p4, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/Cy;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    const/16 p2, 0x7d9

    .line 29
    .line 30
    iget-wide p3, v6, Lcom/google/android/gms/internal/ads/gy;->g:J

    .line 31
    .line 32
    invoke-virtual {v6, p2, p3, p4, p1}, Lcom/google/android/gms/internal/ads/gy;->b(IJLjava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    move-object p1, p0

    .line 36
    :goto_0
    const/16 p2, 0xbbc

    .line 37
    .line 38
    iget-wide p3, v6, Lcom/google/android/gms/internal/ads/gy;->g:J

    .line 39
    .line 40
    invoke-virtual {v6, p2, p3, p4, p0}, Lcom/google/android/gms/internal/ads/gy;->b(IJLjava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget p0, p1, Lcom/google/android/gms/internal/ads/Cy;->I:I

    .line 46
    .line 47
    const/4 p2, 0x7

    .line 48
    if-ne p0, p2, :cond_0

    .line 49
    .line 50
    const/4 p0, 0x3

    .line 51
    sput p0, Lcom/google/android/gms/internal/ads/cy;->e:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 p0, 0x2

    .line 55
    sput p0, Lcom/google/android/gms/internal/ads/cy;->e:I

    .line 56
    .line 57
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 58
    .line 59
    new-instance p1, Lcom/google/android/gms/internal/ads/Cy;

    .line 60
    .line 61
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Cy;-><init>()V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-object p1
.end method

.method public static c0(II)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ltz p0, :cond_1

    .line 5
    .line 6
    if-lt p0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    return-void

    .line 10
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 11
    .line 12
    const-string v4, "index"

    .line 13
    .line 14
    if-ltz p0, :cond_3

    .line 15
    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "negative size: "

    .line 21
    .line 22
    invoke-static {v0, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v5, 0x3

    .line 39
    new-array v5, v5, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v4, v5, v2

    .line 42
    .line 43
    aput-object p0, v5, v1

    .line 44
    .line 45
    aput-object p1, v5, v0

    .line 46
    .line 47
    const-string p0, "%s (%s) must be less than size (%s)"

    .line 48
    .line 49
    invoke-static {p0, v5}, LQ3/b;->I(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-array p1, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v4, p1, v2

    .line 61
    .line 62
    aput-object p0, p1, v1

    .line 63
    .line 64
    const-string p0, "%s (%s) must not be negative"

    .line 65
    .line 66
    invoke-static {p0, p1}, LQ3/b;->I(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_1
    invoke-direct {v3, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v3
.end method

.method public static d0(LD4/b;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/J;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/J;-><init>(Ljava/lang/String;II)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 9
    .line 10
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static e(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static e0(LR3/a;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/B8;->g:Lcom/google/android/gms/internal/ads/f8;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Double;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Cc;->c(Ljava/lang/Throwable;Ljava/lang/String;F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static f(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .locals 8

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    :goto_0
    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    const/4 v6, -0x1

    .line 13
    if-eq v5, v6, :cond_0

    .line 14
    .line 15
    int-to-long v6, v5

    .line 16
    add-long/2addr v2, v6

    .line 17
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {p0}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-wide v2

    .line 32
    :goto_1
    if-nez p2, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    invoke-static {p0}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 39
    .line 40
    .line 41
    :goto_2
    throw v0
.end method

.method public static f0(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p0, "This request is sent from a test device."

    .line 4
    .line 5
    invoke-static {p0}, Lp3/h;->f(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object p1, Ll3/p;->f:Ll3/p;

    .line 10
    .line 11
    iget-object p1, p1, Ll3/p;->a:Lp3/d;

    .line 12
    .line 13
    invoke-static {p0}, Lp3/d;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\""

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, "\")) to get test ads on this device."

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lp3/h;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static g(ILandroid/os/Parcel;)Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static g0(Landroid/os/Parcel;II)V
    .locals 5

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, LM3/b;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "Expected size "

    .line 11
    .line 12
    const-string v3, " got "

    .line 13
    .line 14
    const-string v4, " (0x"

    .line 15
    .line 16
    invoke-static {v2, p2, v3, p1, v4}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, ")"

    .line 21
    .line 22
    invoke-static {p1, v1, p2}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1, p0}, LM3/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public static h0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/Xm;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public static i(ILandroid/os/Parcel;)[B
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static i0(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lf/b;->H:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "cn.google"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sput-object p0, Lf/b;->H:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_0
    sget-object p0, Lf/b;->H:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public static j(ILandroid/os/Parcel;)[I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static j0(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public static k(ILandroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/2addr v0, p0

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public static k0(Ljava/lang/String;)J
    .locals 9

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const-string v0, "\\."

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    aget-object v2, p0, v0

    .line 12
    .line 13
    const-string v3, ":"

    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    array-length v3, v2

    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    :goto_0
    if-ge v0, v3, :cond_0

    .line 24
    .line 25
    aget-object v6, v2, v0

    .line 26
    .line 27
    const-wide/16 v7, 0x3c

    .line 28
    .line 29
    mul-long v4, v4, v7

    .line 30
    .line 31
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    add-long/2addr v4, v6

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 40
    .line 41
    mul-long v4, v4, v2

    .line 42
    .line 43
    array-length v0, p0

    .line 44
    if-ne v0, v1, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    aget-object p0, p0, v0

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    add-long/2addr v4, v0

    .line 54
    :cond_1
    mul-long v4, v4, v2

    .line 55
    .line 56
    return-wide v4
.end method

.method public static l(ILandroid/os/Parcel;)[J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    invoke-static {p1, p0}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/os/Parcelable;

    .line 18
    .line 19
    add-int/2addr v0, p1

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    .line 22
    .line 23
    return-object p2
.end method

.method public static m0(Lcom/google/android/gms/internal/ads/zA;Lcom/google/android/gms/internal/ads/zA;)Lcom/google/android/gms/internal/ads/YA;
    .locals 1

    .line 1
    const-string v0, "set1"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lf/b;->w0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "set2"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lf/b;->w0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/YA;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/YA;-><init>(Lcom/google/android/gms/internal/ads/zA;Lcom/google/android/gms/internal/ads/zA;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static n(ILandroid/os/Parcel;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static n0(Lcom/google/android/gms/internal/ads/u3;)Lr2/b;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/u3;->c:Ljava/util/Map;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    const-string v4, "Date"

    .line 14
    .line 15
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-static {v4}, Lf/b;->Z(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-wide/16 v7, 0x0

    .line 29
    .line 30
    :goto_0
    const-string v4, "Cache-Control"

    .line 31
    .line 32
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    if-eqz v4, :cond_8

    .line 40
    .line 41
    const-string v11, ","

    .line 42
    .line 43
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/4 v11, 0x0

    .line 48
    const-wide/16 v12, 0x0

    .line 49
    .line 50
    const-wide/16 v14, 0x0

    .line 51
    .line 52
    :goto_1
    array-length v9, v4

    .line 53
    if-ge v10, v9, :cond_7

    .line 54
    .line 55
    aget-object v9, v4, v10

    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    const-string v5, "no-cache"

    .line 62
    .line 63
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_6

    .line 68
    .line 69
    const-string v5, "no-store"

    .line 70
    .line 71
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_6

    .line 76
    .line 77
    const-string v5, "max-age="

    .line 78
    .line 79
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    const/16 v5, 0x8

    .line 86
    .line 87
    :try_start_0
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const-string v5, "stale-while-revalidate="

    .line 97
    .line 98
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    const/16 v5, 0x17

    .line 105
    .line 106
    :try_start_1
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string v5, "must-revalidate"

    .line 116
    .line 117
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_4

    .line 122
    .line 123
    const-string v5, "proxy-revalidate"

    .line 124
    .line 125
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    :cond_4
    const/4 v11, 0x1

    .line 132
    :catch_0
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    :goto_3
    const/4 v0, 0x0

    .line 136
    return-object v0

    .line 137
    :cond_7
    const/4 v10, 0x1

    .line 138
    goto :goto_4

    .line 139
    :cond_8
    const/4 v11, 0x0

    .line 140
    const-wide/16 v12, 0x0

    .line 141
    .line 142
    const-wide/16 v14, 0x0

    .line 143
    .line 144
    :goto_4
    const-string v4, "Expires"

    .line 145
    .line 146
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Ljava/lang/String;

    .line 151
    .line 152
    if-eqz v4, :cond_9

    .line 153
    .line 154
    invoke-static {v4}, Lf/b;->Z(Ljava/lang/String;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    goto :goto_5

    .line 159
    :cond_9
    const-wide/16 v4, 0x0

    .line 160
    .line 161
    :goto_5
    const-string v6, "Last-Modified"

    .line 162
    .line 163
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v6, :cond_a

    .line 170
    .line 171
    invoke-static {v6}, Lf/b;->Z(Ljava/lang/String;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v16

    .line 175
    move-wide/from16 v18, v16

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_a
    const-wide/16 v18, 0x0

    .line 179
    .line 180
    :goto_6
    const-string v6, "ETag"

    .line 181
    .line 182
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v6, Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v10, :cond_c

    .line 189
    .line 190
    const-wide/16 v4, 0x3e8

    .line 191
    .line 192
    mul-long v14, v14, v4

    .line 193
    .line 194
    add-long/2addr v1, v14

    .line 195
    if-eqz v11, :cond_b

    .line 196
    .line 197
    move-wide v12, v1

    .line 198
    goto :goto_7

    .line 199
    :cond_b
    invoke-static {v12, v13}, Ljava/lang/Long;->signum(J)I

    .line 200
    .line 201
    .line 202
    mul-long v12, v12, v4

    .line 203
    .line 204
    add-long/2addr v12, v1

    .line 205
    :goto_7
    move-wide v9, v12

    .line 206
    goto :goto_8

    .line 207
    :cond_c
    const-wide/16 v9, 0x0

    .line 208
    .line 209
    cmp-long v11, v7, v9

    .line 210
    .line 211
    if-lez v11, :cond_d

    .line 212
    .line 213
    cmp-long v11, v4, v7

    .line 214
    .line 215
    if-ltz v11, :cond_d

    .line 216
    .line 217
    sub-long/2addr v4, v7

    .line 218
    add-long/2addr v1, v4

    .line 219
    move-wide v9, v1

    .line 220
    goto :goto_8

    .line 221
    :cond_d
    move-wide v1, v9

    .line 222
    :goto_8
    new-instance v4, Lr2/b;

    .line 223
    .line 224
    const/4 v5, 0x1

    .line 225
    invoke-direct {v4, v5}, Lr2/b;-><init>(I)V

    .line 226
    .line 227
    .line 228
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/u3;->b:[B

    .line 229
    .line 230
    iput-object v5, v4, Lr2/b;->a:[B

    .line 231
    .line 232
    iput-object v6, v4, Lr2/b;->b:Ljava/lang/String;

    .line 233
    .line 234
    iput-wide v1, v4, Lr2/b;->f:J

    .line 235
    .line 236
    iput-wide v9, v4, Lr2/b;->e:J

    .line 237
    .line 238
    iput-wide v7, v4, Lr2/b;->c:J

    .line 239
    .line 240
    move-wide/from16 v1, v18

    .line 241
    .line 242
    iput-wide v1, v4, Lr2/b;->d:J

    .line 243
    .line 244
    iput-object v3, v4, Lr2/b;->g:Ljava/util/Map;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/u3;->d:Ljava/util/List;

    .line 247
    .line 248
    iput-object v0, v4, Lr2/b;->h:Ljava/util/List;

    .line 249
    .line 250
    return-object v4
.end method

.method public static o(ILandroid/os/Parcel;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static o0(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    .line 8
    const-string v1, "index"

    .line 9
    .line 10
    invoke-static {p0, p1, v1}, Lf/b;->F0(IILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static p(ILandroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static p0(ILandroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int v1, v0, p0

    .line 6
    .line 7
    add-int/lit8 p0, p0, -0x4

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1, p0}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    add-int/2addr v0, p1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public static q0(Landroid/os/Parcel;II)V
    .locals 5

    .line 1
    invoke-static {p1, p0}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, LM3/b;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "Expected size "

    .line 15
    .line 16
    const-string v3, " got "

    .line 17
    .line 18
    const-string v4, " (0x"

    .line 19
    .line 20
    invoke-static {v2, p2, v3, p1, v4}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, ")"

    .line 25
    .line 26
    invoke-static {p1, v1, p2}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1, p0}, LM3/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public static r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-static {p1, p0}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    add-int/2addr v0, p1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public static r0(Lcom/google/android/gms/internal/ads/ta;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "(window.AFMA_ReceiveMessage || function() {})(\'"

    .line 6
    .line 7
    const-string v1, "\',"

    .line 8
    .line 9
    const-string v2, ");"

    .line 10
    .line 11
    invoke-static {v0, p1, v1, p2, v2}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v0, "Dispatching AFMA event: "

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2}, Lp3/h;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/util/Hashtable;)Lw5/b;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v11, 0x2

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v13

    .line 10
    if-nez v13, :cond_72

    .line 11
    .line 12
    sget-object v13, LL5/b;->H:LL5/b;

    .line 13
    .line 14
    sget-object v14, Lq5/d;->G:Lq5/d;

    .line 15
    .line 16
    invoke-virtual {v1, v14}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v15

    .line 20
    if-eqz v15, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v13

    .line 26
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v13

    .line 30
    invoke-static {v13}, LL5/b;->valueOf(Ljava/lang/String;)LL5/b;

    .line 31
    .line 32
    .line 33
    move-result-object v13

    .line 34
    :cond_0
    sget-object v14, Lq5/d;->I:Lq5/d;

    .line 35
    .line 36
    invoke-virtual {v1, v14}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v15

    .line 40
    if-eqz v15, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v14

    .line 46
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v14, 0x4

    .line 56
    :goto_0
    sget-object v15, Lq5/d;->H:Lq5/d;

    .line 57
    .line 58
    invoke-virtual {v1, v15}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v16

    .line 62
    if-eqz v16, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v15

    .line 68
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const-string v15, "ISO-8859-1"

    .line 74
    .line 75
    :goto_1
    const-string v2, "Shift_JIS"

    .line 76
    .line 77
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v17

    .line 81
    sget-object v3, LL5/d;->M:LL5/d;

    .line 82
    .line 83
    sget-object v18, LN5/b;->a:[I

    .line 84
    .line 85
    const/16 v6, 0x60

    .line 86
    .line 87
    const/4 v7, -0x1

    .line 88
    const/16 v8, 0x30

    .line 89
    .line 90
    if-eqz v17, :cond_7

    .line 91
    .line 92
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 93
    .line 94
    .line 95
    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    array-length v5, v4

    .line 97
    rem-int/lit8 v22, v5, 0x2

    .line 98
    .line 99
    if-eqz v22, :cond_3

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    const/4 v9, 0x0

    .line 103
    :goto_2
    if-ge v9, v5, :cond_6

    .line 104
    .line 105
    aget-byte v10, v4, v9

    .line 106
    .line 107
    and-int/lit16 v10, v10, 0xff

    .line 108
    .line 109
    const/16 v12, 0x81

    .line 110
    .line 111
    if-lt v10, v12, :cond_4

    .line 112
    .line 113
    const/16 v12, 0x9f

    .line 114
    .line 115
    if-le v10, v12, :cond_5

    .line 116
    .line 117
    :cond_4
    const/16 v12, 0xe0

    .line 118
    .line 119
    if-lt v10, v12, :cond_7

    .line 120
    .line 121
    const/16 v12, 0xeb

    .line 122
    .line 123
    if-le v10, v12, :cond_5

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    add-int/2addr v9, v11

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    sget-object v4, LL5/d;->O:LL5/d;

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :catch_0
    nop

    .line 132
    :cond_7
    :goto_3
    const/4 v4, 0x0

    .line 133
    const/4 v5, 0x0

    .line 134
    const/4 v9, 0x0

    .line 135
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-ge v4, v10, :cond_a

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-lt v10, v8, :cond_8

    .line 146
    .line 147
    const/16 v12, 0x39

    .line 148
    .line 149
    if-gt v10, v12, :cond_8

    .line 150
    .line 151
    const/4 v9, 0x1

    .line 152
    :goto_5
    const/4 v10, 0x1

    .line 153
    goto :goto_6

    .line 154
    :cond_8
    if-ge v10, v6, :cond_9

    .line 155
    .line 156
    aget v5, v18, v10

    .line 157
    .line 158
    if-eq v5, v7, :cond_9

    .line 159
    .line 160
    const/4 v5, 0x1

    .line 161
    goto :goto_5

    .line 162
    :goto_6
    add-int/2addr v4, v10

    .line 163
    goto :goto_4

    .line 164
    :cond_9
    move-object v4, v3

    .line 165
    goto :goto_7

    .line 166
    :cond_a
    if-eqz v5, :cond_b

    .line 167
    .line 168
    sget-object v4, LL5/d;->K:LL5/d;

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_b
    if-eqz v9, :cond_9

    .line 172
    .line 173
    sget-object v4, LL5/d;->J:LL5/d;

    .line 174
    .line 175
    :goto_7
    new-instance v5, Lw5/a;

    .line 176
    .line 177
    invoke-direct {v5}, Lw5/a;-><init>()V

    .line 178
    .line 179
    .line 180
    if-ne v4, v3, :cond_c

    .line 181
    .line 182
    if-eqz v16, :cond_c

    .line 183
    .line 184
    sget-object v9, Lw5/c;->J:Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    check-cast v9, Lw5/c;

    .line 191
    .line 192
    if-eqz v9, :cond_c

    .line 193
    .line 194
    const/4 v10, 0x4

    .line 195
    const/4 v12, 0x7

    .line 196
    invoke-virtual {v5, v12, v10}, Lw5/a;->b(II)V

    .line 197
    .line 198
    .line 199
    iget-object v9, v9, Lw5/c;->G:[I

    .line 200
    .line 201
    const/4 v10, 0x0

    .line 202
    aget v9, v9, v10

    .line 203
    .line 204
    const/16 v10, 0x8

    .line 205
    .line 206
    invoke-virtual {v5, v9, v10}, Lw5/a;->b(II)V

    .line 207
    .line 208
    .line 209
    :cond_c
    sget-object v9, Lq5/d;->L:Lq5/d;

    .line 210
    .line 211
    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_d

    .line 216
    .line 217
    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-eqz v9, :cond_d

    .line 230
    .line 231
    const/4 v9, 0x4

    .line 232
    const/4 v10, 0x5

    .line 233
    invoke-virtual {v5, v10, v9}, Lw5/a;->b(II)V

    .line 234
    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_d
    const/4 v9, 0x4

    .line 238
    :goto_8
    iget v10, v4, LL5/d;->H:I

    .line 239
    .line 240
    invoke-virtual {v5, v10, v9}, Lw5/a;->b(II)V

    .line 241
    .line 242
    .line 243
    new-instance v10, Lw5/a;

    .line 244
    .line 245
    invoke-direct {v10}, Lw5/a;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    const/4 v8, 0x1

    .line 253
    if-eq v12, v8, :cond_1a

    .line 254
    .line 255
    if-eq v12, v11, :cond_14

    .line 256
    .line 257
    if-eq v12, v9, :cond_13

    .line 258
    .line 259
    const/4 v6, 0x6

    .line 260
    if-ne v12, v6, :cond_12

    .line 261
    .line 262
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 263
    .line 264
    .line 265
    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    array-length v6, v2

    .line 267
    rem-int/2addr v6, v11

    .line 268
    if-nez v6, :cond_11

    .line 269
    .line 270
    array-length v6, v2

    .line 271
    sub-int/2addr v6, v8

    .line 272
    const/4 v9, 0x0

    .line 273
    :goto_9
    if-ge v9, v6, :cond_1d

    .line 274
    .line 275
    aget-byte v12, v2, v9

    .line 276
    .line 277
    and-int/lit16 v12, v12, 0xff

    .line 278
    .line 279
    add-int/lit8 v15, v9, 0x1

    .line 280
    .line 281
    aget-byte v8, v2, v15

    .line 282
    .line 283
    and-int/lit16 v8, v8, 0xff

    .line 284
    .line 285
    const/16 v15, 0x8

    .line 286
    .line 287
    shl-int/2addr v12, v15

    .line 288
    or-int/2addr v8, v12

    .line 289
    const v12, 0x8140

    .line 290
    .line 291
    .line 292
    if-lt v8, v12, :cond_e

    .line 293
    .line 294
    const v15, 0x9ffc

    .line 295
    .line 296
    .line 297
    if-gt v8, v15, :cond_e

    .line 298
    .line 299
    :goto_a
    sub-int/2addr v8, v12

    .line 300
    goto :goto_b

    .line 301
    :cond_e
    const v12, 0xe040

    .line 302
    .line 303
    .line 304
    if-lt v8, v12, :cond_f

    .line 305
    .line 306
    const v12, 0xebbf

    .line 307
    .line 308
    .line 309
    if-gt v8, v12, :cond_f

    .line 310
    .line 311
    const v12, 0xc140

    .line 312
    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_f
    const/4 v8, -0x1

    .line 316
    :goto_b
    if-eq v8, v7, :cond_10

    .line 317
    .line 318
    const/16 v12, 0x8

    .line 319
    .line 320
    shr-int/lit8 v15, v8, 0x8

    .line 321
    .line 322
    mul-int/lit16 v15, v15, 0xc0

    .line 323
    .line 324
    and-int/lit16 v8, v8, 0xff

    .line 325
    .line 326
    add-int/2addr v15, v8

    .line 327
    const/16 v8, 0xd

    .line 328
    .line 329
    invoke-virtual {v10, v15, v8}, Lw5/a;->b(II)V

    .line 330
    .line 331
    .line 332
    add-int/2addr v9, v11

    .line 333
    const/4 v8, 0x1

    .line 334
    goto :goto_9

    .line 335
    :cond_10
    new-instance v0, Lq5/q;

    .line 336
    .line 337
    const-string v1, "Invalid byte sequence"

    .line 338
    .line 339
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v0

    .line 343
    :cond_11
    new-instance v0, Lq5/q;

    .line 344
    .line 345
    const-string v1, "Kanji byte size not even"

    .line 346
    .line 347
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v0

    .line 351
    :catch_1
    move-exception v0

    .line 352
    move-object v1, v0

    .line 353
    new-instance v0, Lq5/q;

    .line 354
    .line 355
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_12
    new-instance v0, Lq5/q;

    .line 360
    .line 361
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    const-string v2, "Invalid mode: "

    .line 366
    .line 367
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw v0

    .line 375
    :cond_13
    :try_start_2
    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 376
    .line 377
    .line 378
    move-result-object v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 379
    array-length v6, v2

    .line 380
    const/4 v8, 0x0

    .line 381
    :goto_c
    if-ge v8, v6, :cond_1d

    .line 382
    .line 383
    aget-byte v9, v2, v8

    .line 384
    .line 385
    const/16 v12, 0x8

    .line 386
    .line 387
    invoke-virtual {v10, v9, v12}, Lw5/a;->b(II)V

    .line 388
    .line 389
    .line 390
    const/4 v9, 0x1

    .line 391
    add-int/2addr v8, v9

    .line 392
    goto :goto_c

    .line 393
    :catch_2
    move-exception v0

    .line 394
    move-object v1, v0

    .line 395
    new-instance v0, Lq5/q;

    .line 396
    .line 397
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 398
    .line 399
    .line 400
    throw v0

    .line 401
    :cond_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    const/4 v8, 0x0

    .line 406
    :goto_d
    if-ge v8, v2, :cond_1d

    .line 407
    .line 408
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 409
    .line 410
    .line 411
    move-result v9

    .line 412
    if-ge v9, v6, :cond_15

    .line 413
    .line 414
    aget v9, v18, v9

    .line 415
    .line 416
    goto :goto_e

    .line 417
    :cond_15
    const/4 v9, -0x1

    .line 418
    :goto_e
    if-eq v9, v7, :cond_19

    .line 419
    .line 420
    const/4 v12, 0x1

    .line 421
    add-int/lit8 v15, v8, 0x1

    .line 422
    .line 423
    if-ge v15, v2, :cond_18

    .line 424
    .line 425
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 426
    .line 427
    .line 428
    move-result v12

    .line 429
    if-ge v12, v6, :cond_16

    .line 430
    .line 431
    aget v12, v18, v12

    .line 432
    .line 433
    goto :goto_f

    .line 434
    :cond_16
    const/4 v12, -0x1

    .line 435
    :goto_f
    if-eq v12, v7, :cond_17

    .line 436
    .line 437
    mul-int/lit8 v9, v9, 0x2d

    .line 438
    .line 439
    add-int/2addr v9, v12

    .line 440
    const/16 v12, 0xb

    .line 441
    .line 442
    invoke-virtual {v10, v9, v12}, Lw5/a;->b(II)V

    .line 443
    .line 444
    .line 445
    add-int/2addr v8, v11

    .line 446
    goto :goto_d

    .line 447
    :cond_17
    new-instance v0, Lq5/q;

    .line 448
    .line 449
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 450
    .line 451
    .line 452
    throw v0

    .line 453
    :cond_18
    const/4 v8, 0x6

    .line 454
    invoke-virtual {v10, v9, v8}, Lw5/a;->b(II)V

    .line 455
    .line 456
    .line 457
    move v8, v15

    .line 458
    goto :goto_d

    .line 459
    :cond_19
    new-instance v0, Lq5/q;

    .line 460
    .line 461
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 462
    .line 463
    .line 464
    throw v0

    .line 465
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    const/4 v6, 0x0

    .line 470
    :goto_10
    if-ge v6, v2, :cond_1d

    .line 471
    .line 472
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    const/16 v9, 0x30

    .line 477
    .line 478
    sub-int/2addr v8, v9

    .line 479
    add-int/lit8 v12, v6, 0x2

    .line 480
    .line 481
    if-ge v12, v2, :cond_1b

    .line 482
    .line 483
    const/4 v15, 0x1

    .line 484
    add-int/lit8 v7, v6, 0x1

    .line 485
    .line 486
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    sub-int/2addr v7, v9

    .line 491
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 492
    .line 493
    .line 494
    move-result v12

    .line 495
    sub-int/2addr v12, v9

    .line 496
    mul-int/lit8 v8, v8, 0x64

    .line 497
    .line 498
    const/16 v9, 0xa

    .line 499
    .line 500
    mul-int/lit8 v7, v7, 0xa

    .line 501
    .line 502
    add-int/2addr v7, v8

    .line 503
    add-int/2addr v7, v12

    .line 504
    invoke-virtual {v10, v7, v9}, Lw5/a;->b(II)V

    .line 505
    .line 506
    .line 507
    add-int/lit8 v6, v6, 0x3

    .line 508
    .line 509
    :goto_11
    const/4 v7, -0x1

    .line 510
    goto :goto_10

    .line 511
    :cond_1b
    const/4 v7, 0x1

    .line 512
    const/16 v9, 0xa

    .line 513
    .line 514
    add-int/2addr v6, v7

    .line 515
    if-ge v6, v2, :cond_1c

    .line 516
    .line 517
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    const/16 v7, 0x30

    .line 522
    .line 523
    sub-int/2addr v6, v7

    .line 524
    mul-int/lit8 v8, v8, 0xa

    .line 525
    .line 526
    add-int/2addr v8, v6

    .line 527
    const/4 v6, 0x7

    .line 528
    invoke-virtual {v10, v8, v6}, Lw5/a;->b(II)V

    .line 529
    .line 530
    .line 531
    move v6, v12

    .line 532
    goto :goto_11

    .line 533
    :cond_1c
    const/16 v7, 0x30

    .line 534
    .line 535
    const/4 v9, 0x4

    .line 536
    invoke-virtual {v10, v8, v9}, Lw5/a;->b(II)V

    .line 537
    .line 538
    .line 539
    goto :goto_11

    .line 540
    :cond_1d
    sget-object v2, Lq5/d;->J:Lq5/d;

    .line 541
    .line 542
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v6

    .line 546
    if-eqz v6, :cond_20

    .line 547
    .line 548
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    invoke-static {v2}, LL5/f;->c(I)LL5/f;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    iget v6, v5, Lw5/a;->H:I

    .line 565
    .line 566
    invoke-virtual {v4, v2}, LL5/d;->a(LL5/f;)I

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    add-int/2addr v7, v6

    .line 571
    iget v6, v10, Lw5/a;->H:I

    .line 572
    .line 573
    add-int/2addr v7, v6

    .line 574
    iget-object v6, v2, LL5/f;->c:[LK/k;

    .line 575
    .line 576
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 577
    .line 578
    .line 579
    move-result v8

    .line 580
    aget-object v6, v6, v8

    .line 581
    .line 582
    iget v8, v6, LK/k;->H:I

    .line 583
    .line 584
    iget-object v6, v6, LK/k;->I:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v6, [LN/r;

    .line 587
    .line 588
    array-length v9, v6

    .line 589
    const/4 v12, 0x0

    .line 590
    const/4 v15, 0x0

    .line 591
    :goto_12
    if-ge v12, v9, :cond_1e

    .line 592
    .line 593
    aget-object v16, v6, v12

    .line 594
    .line 595
    invoke-virtual/range {v16 .. v16}, LN/r;->a()I

    .line 596
    .line 597
    .line 598
    move-result v16

    .line 599
    add-int v15, v16, v15

    .line 600
    .line 601
    const/16 v16, 0x1

    .line 602
    .line 603
    add-int/lit8 v12, v12, 0x1

    .line 604
    .line 605
    goto :goto_12

    .line 606
    :cond_1e
    mul-int v15, v15, v8

    .line 607
    .line 608
    iget v6, v2, LL5/f;->d:I

    .line 609
    .line 610
    sub-int/2addr v6, v15

    .line 611
    const/4 v8, 0x7

    .line 612
    add-int/2addr v7, v8

    .line 613
    const/16 v8, 0x8

    .line 614
    .line 615
    div-int/2addr v7, v8

    .line 616
    if-lt v6, v7, :cond_1f

    .line 617
    .line 618
    goto/16 :goto_17

    .line 619
    .line 620
    :cond_1f
    new-instance v0, Lq5/q;

    .line 621
    .line 622
    const-string v1, "Data too big for requested version"

    .line 623
    .line 624
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    throw v0

    .line 628
    :cond_20
    const/4 v2, 0x1

    .line 629
    invoke-static {v2}, LL5/f;->c(I)LL5/f;

    .line 630
    .line 631
    .line 632
    move-result-object v6

    .line 633
    iget v2, v5, Lw5/a;->H:I

    .line 634
    .line 635
    invoke-virtual {v4, v6}, LL5/d;->a(LL5/f;)I

    .line 636
    .line 637
    .line 638
    move-result v6

    .line 639
    add-int/2addr v6, v2

    .line 640
    iget v2, v10, Lw5/a;->H:I

    .line 641
    .line 642
    add-int/2addr v6, v2

    .line 643
    const/4 v2, 0x1

    .line 644
    :goto_13
    const-string v7, "Data too big"

    .line 645
    .line 646
    const/16 v8, 0x28

    .line 647
    .line 648
    if-gt v2, v8, :cond_71

    .line 649
    .line 650
    invoke-static {v2}, LL5/f;->c(I)LL5/f;

    .line 651
    .line 652
    .line 653
    move-result-object v8

    .line 654
    iget v9, v8, LL5/f;->d:I

    .line 655
    .line 656
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 657
    .line 658
    .line 659
    move-result v12

    .line 660
    iget-object v15, v8, LL5/f;->c:[LK/k;

    .line 661
    .line 662
    aget-object v12, v15, v12

    .line 663
    .line 664
    iget v15, v12, LK/k;->H:I

    .line 665
    .line 666
    iget-object v12, v12, LK/k;->I:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v12, [LN/r;

    .line 669
    .line 670
    array-length v11, v12

    .line 671
    const/4 v0, 0x0

    .line 672
    const/16 v25, 0x0

    .line 673
    .line 674
    :goto_14
    if-ge v0, v11, :cond_21

    .line 675
    .line 676
    aget-object v26, v12, v0

    .line 677
    .line 678
    invoke-virtual/range {v26 .. v26}, LN/r;->a()I

    .line 679
    .line 680
    .line 681
    move-result v26

    .line 682
    add-int v25, v26, v25

    .line 683
    .line 684
    const/16 v24, 0x1

    .line 685
    .line 686
    add-int/lit8 v0, v0, 0x1

    .line 687
    .line 688
    goto :goto_14

    .line 689
    :cond_21
    mul-int v25, v25, v15

    .line 690
    .line 691
    sub-int v9, v9, v25

    .line 692
    .line 693
    const/4 v0, 0x7

    .line 694
    add-int/lit8 v11, v6, 0x7

    .line 695
    .line 696
    const/16 v0, 0x8

    .line 697
    .line 698
    div-int/2addr v11, v0

    .line 699
    if-lt v9, v11, :cond_70

    .line 700
    .line 701
    iget v0, v5, Lw5/a;->H:I

    .line 702
    .line 703
    invoke-virtual {v4, v8}, LL5/d;->a(LL5/f;)I

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    add-int/2addr v2, v0

    .line 708
    iget v0, v10, Lw5/a;->H:I

    .line 709
    .line 710
    add-int/2addr v2, v0

    .line 711
    const/4 v0, 0x1

    .line 712
    :goto_15
    const/16 v6, 0x28

    .line 713
    .line 714
    if-gt v0, v6, :cond_6f

    .line 715
    .line 716
    invoke-static {v0}, LL5/f;->c(I)LL5/f;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    iget v8, v6, LL5/f;->d:I

    .line 721
    .line 722
    iget-object v9, v6, LL5/f;->c:[LK/k;

    .line 723
    .line 724
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 725
    .line 726
    .line 727
    move-result v11

    .line 728
    aget-object v9, v9, v11

    .line 729
    .line 730
    iget v11, v9, LK/k;->H:I

    .line 731
    .line 732
    iget-object v9, v9, LK/k;->I:Ljava/lang/Object;

    .line 733
    .line 734
    check-cast v9, [LN/r;

    .line 735
    .line 736
    array-length v12, v9

    .line 737
    const/4 v15, 0x0

    .line 738
    const/16 v25, 0x0

    .line 739
    .line 740
    :goto_16
    if-ge v15, v12, :cond_22

    .line 741
    .line 742
    aget-object v26, v9, v15

    .line 743
    .line 744
    invoke-virtual/range {v26 .. v26}, LN/r;->a()I

    .line 745
    .line 746
    .line 747
    move-result v26

    .line 748
    add-int v25, v26, v25

    .line 749
    .line 750
    const/16 v24, 0x1

    .line 751
    .line 752
    add-int/lit8 v15, v15, 0x1

    .line 753
    .line 754
    goto :goto_16

    .line 755
    :cond_22
    mul-int v25, v25, v11

    .line 756
    .line 757
    sub-int v8, v8, v25

    .line 758
    .line 759
    const/4 v9, 0x7

    .line 760
    add-int/lit8 v11, v2, 0x7

    .line 761
    .line 762
    const/16 v9, 0x8

    .line 763
    .line 764
    div-int/2addr v11, v9

    .line 765
    if-lt v8, v11, :cond_6e

    .line 766
    .line 767
    move-object v2, v6

    .line 768
    :goto_17
    new-instance v0, Lw5/a;

    .line 769
    .line 770
    invoke-direct {v0}, Lw5/a;-><init>()V

    .line 771
    .line 772
    .line 773
    iget v6, v5, Lw5/a;->H:I

    .line 774
    .line 775
    invoke-virtual {v0, v6}, Lw5/a;->c(I)V

    .line 776
    .line 777
    .line 778
    const/4 v7, 0x0

    .line 779
    :goto_18
    if-ge v7, v6, :cond_23

    .line 780
    .line 781
    invoke-virtual {v5, v7}, Lw5/a;->d(I)Z

    .line 782
    .line 783
    .line 784
    move-result v8

    .line 785
    invoke-virtual {v0, v8}, Lw5/a;->a(Z)V

    .line 786
    .line 787
    .line 788
    const/4 v8, 0x1

    .line 789
    add-int/2addr v7, v8

    .line 790
    goto :goto_18

    .line 791
    :cond_23
    const/4 v8, 0x1

    .line 792
    if-ne v4, v3, :cond_24

    .line 793
    .line 794
    invoke-virtual {v10}, Lw5/a;->g()I

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    goto :goto_19

    .line 799
    :cond_24
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 800
    .line 801
    .line 802
    move-result v3

    .line 803
    :goto_19
    invoke-virtual {v4, v2}, LL5/d;->a(LL5/f;)I

    .line 804
    .line 805
    .line 806
    move-result v4

    .line 807
    shl-int v5, v8, v4

    .line 808
    .line 809
    if-ge v3, v5, :cond_6d

    .line 810
    .line 811
    invoke-virtual {v0, v3, v4}, Lw5/a;->b(II)V

    .line 812
    .line 813
    .line 814
    iget v3, v10, Lw5/a;->H:I

    .line 815
    .line 816
    iget v4, v0, Lw5/a;->H:I

    .line 817
    .line 818
    add-int/2addr v4, v3

    .line 819
    invoke-virtual {v0, v4}, Lw5/a;->c(I)V

    .line 820
    .line 821
    .line 822
    const/4 v4, 0x0

    .line 823
    :goto_1a
    if-ge v4, v3, :cond_25

    .line 824
    .line 825
    invoke-virtual {v10, v4}, Lw5/a;->d(I)Z

    .line 826
    .line 827
    .line 828
    move-result v5

    .line 829
    invoke-virtual {v0, v5}, Lw5/a;->a(Z)V

    .line 830
    .line 831
    .line 832
    const/4 v5, 0x1

    .line 833
    add-int/2addr v4, v5

    .line 834
    goto :goto_1a

    .line 835
    :cond_25
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 836
    .line 837
    .line 838
    move-result v3

    .line 839
    iget-object v4, v2, LL5/f;->c:[LK/k;

    .line 840
    .line 841
    aget-object v3, v4, v3

    .line 842
    .line 843
    iget v4, v3, LK/k;->H:I

    .line 844
    .line 845
    iget-object v5, v3, LK/k;->I:Ljava/lang/Object;

    .line 846
    .line 847
    check-cast v5, [LN/r;

    .line 848
    .line 849
    array-length v6, v5

    .line 850
    const/4 v7, 0x0

    .line 851
    const/4 v8, 0x0

    .line 852
    :goto_1b
    if-ge v7, v6, :cond_26

    .line 853
    .line 854
    aget-object v9, v5, v7

    .line 855
    .line 856
    invoke-virtual {v9}, LN/r;->a()I

    .line 857
    .line 858
    .line 859
    move-result v9

    .line 860
    add-int/2addr v8, v9

    .line 861
    const/4 v9, 0x1

    .line 862
    add-int/2addr v7, v9

    .line 863
    goto :goto_1b

    .line 864
    :cond_26
    mul-int v8, v8, v4

    .line 865
    .line 866
    iget v4, v2, LL5/f;->d:I

    .line 867
    .line 868
    sub-int v5, v4, v8

    .line 869
    .line 870
    shl-int/lit8 v6, v5, 0x3

    .line 871
    .line 872
    iget v7, v0, Lw5/a;->H:I

    .line 873
    .line 874
    if-gt v7, v6, :cond_6c

    .line 875
    .line 876
    const/4 v7, 0x0

    .line 877
    :goto_1c
    const/4 v8, 0x4

    .line 878
    if-ge v7, v8, :cond_27

    .line 879
    .line 880
    iget v8, v0, Lw5/a;->H:I

    .line 881
    .line 882
    if-ge v8, v6, :cond_27

    .line 883
    .line 884
    const/4 v8, 0x0

    .line 885
    invoke-virtual {v0, v8}, Lw5/a;->a(Z)V

    .line 886
    .line 887
    .line 888
    const/4 v9, 0x1

    .line 889
    add-int/2addr v7, v9

    .line 890
    goto :goto_1c

    .line 891
    :cond_27
    const/4 v8, 0x0

    .line 892
    const/4 v9, 0x1

    .line 893
    iget v7, v0, Lw5/a;->H:I

    .line 894
    .line 895
    const/4 v10, 0x7

    .line 896
    and-int/2addr v7, v10

    .line 897
    if-lez v7, :cond_28

    .line 898
    .line 899
    :goto_1d
    const/16 v10, 0x8

    .line 900
    .line 901
    if-ge v7, v10, :cond_28

    .line 902
    .line 903
    invoke-virtual {v0, v8}, Lw5/a;->a(Z)V

    .line 904
    .line 905
    .line 906
    add-int/2addr v7, v9

    .line 907
    const/4 v8, 0x0

    .line 908
    goto :goto_1d

    .line 909
    :cond_28
    invoke-virtual {v0}, Lw5/a;->g()I

    .line 910
    .line 911
    .line 912
    move-result v7

    .line 913
    sub-int v7, v5, v7

    .line 914
    .line 915
    const/4 v8, 0x0

    .line 916
    :goto_1e
    if-ge v8, v7, :cond_2a

    .line 917
    .line 918
    and-int/lit8 v11, v8, 0x1

    .line 919
    .line 920
    if-nez v11, :cond_29

    .line 921
    .line 922
    const/16 v10, 0xec

    .line 923
    .line 924
    :goto_1f
    const/16 v11, 0x8

    .line 925
    .line 926
    goto :goto_20

    .line 927
    :cond_29
    const/16 v10, 0x11

    .line 928
    .line 929
    goto :goto_1f

    .line 930
    :goto_20
    invoke-virtual {v0, v10, v11}, Lw5/a;->b(II)V

    .line 931
    .line 932
    .line 933
    add-int/2addr v8, v9

    .line 934
    goto :goto_1e

    .line 935
    :cond_2a
    iget v7, v0, Lw5/a;->H:I

    .line 936
    .line 937
    if-ne v7, v6, :cond_6b

    .line 938
    .line 939
    iget-object v3, v3, LK/k;->I:Ljava/lang/Object;

    .line 940
    .line 941
    check-cast v3, [LN/r;

    .line 942
    .line 943
    array-length v6, v3

    .line 944
    const/4 v7, 0x0

    .line 945
    const/4 v8, 0x0

    .line 946
    :goto_21
    if-ge v7, v6, :cond_2b

    .line 947
    .line 948
    aget-object v9, v3, v7

    .line 949
    .line 950
    invoke-virtual {v9}, LN/r;->a()I

    .line 951
    .line 952
    .line 953
    move-result v9

    .line 954
    add-int/2addr v8, v9

    .line 955
    const/4 v9, 0x1

    .line 956
    add-int/2addr v7, v9

    .line 957
    goto :goto_21

    .line 958
    :cond_2b
    const/4 v9, 0x1

    .line 959
    invoke-virtual {v0}, Lw5/a;->g()I

    .line 960
    .line 961
    .line 962
    move-result v3

    .line 963
    if-ne v3, v5, :cond_6a

    .line 964
    .line 965
    new-instance v3, Ljava/util/ArrayList;

    .line 966
    .line 967
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 968
    .line 969
    .line 970
    const/4 v6, 0x0

    .line 971
    const/4 v7, 0x0

    .line 972
    const/4 v11, 0x0

    .line 973
    const/4 v12, 0x0

    .line 974
    :goto_22
    if-ge v6, v8, :cond_43

    .line 975
    .line 976
    new-array v15, v9, [I

    .line 977
    .line 978
    new-array v10, v9, [I

    .line 979
    .line 980
    if-ge v6, v8, :cond_42

    .line 981
    .line 982
    rem-int v25, v4, v8

    .line 983
    .line 984
    move/from16 v26, v14

    .line 985
    .line 986
    sub-int v14, v8, v25

    .line 987
    .line 988
    div-int v27, v4, v8

    .line 989
    .line 990
    add-int/lit8 v28, v27, 0x1

    .line 991
    .line 992
    div-int v29, v5, v8

    .line 993
    .line 994
    add-int/lit8 v30, v29, 0x1

    .line 995
    .line 996
    sub-int v9, v27, v29

    .line 997
    .line 998
    move-object/from16 v27, v13

    .line 999
    .line 1000
    sub-int v13, v28, v30

    .line 1001
    .line 1002
    if-ne v9, v13, :cond_41

    .line 1003
    .line 1004
    add-int v1, v14, v25

    .line 1005
    .line 1006
    if-ne v8, v1, :cond_40

    .line 1007
    .line 1008
    add-int v1, v29, v9

    .line 1009
    .line 1010
    mul-int v1, v1, v14

    .line 1011
    .line 1012
    add-int v28, v30, v13

    .line 1013
    .line 1014
    mul-int v28, v28, v25

    .line 1015
    .line 1016
    add-int v1, v28, v1

    .line 1017
    .line 1018
    if-ne v4, v1, :cond_3f

    .line 1019
    .line 1020
    if-ge v6, v14, :cond_2c

    .line 1021
    .line 1022
    const/4 v1, 0x0

    .line 1023
    aput v29, v15, v1

    .line 1024
    .line 1025
    aput v9, v10, v1

    .line 1026
    .line 1027
    goto :goto_23

    .line 1028
    :cond_2c
    const/4 v1, 0x0

    .line 1029
    aput v30, v15, v1

    .line 1030
    .line 1031
    aput v13, v10, v1

    .line 1032
    .line 1033
    :goto_23
    aget v9, v15, v1

    .line 1034
    .line 1035
    new-array v1, v9, [B

    .line 1036
    .line 1037
    shl-int/lit8 v13, v7, 0x3

    .line 1038
    .line 1039
    const/4 v14, 0x0

    .line 1040
    :goto_24
    if-ge v14, v9, :cond_2f

    .line 1041
    .line 1042
    move-object/from16 v28, v2

    .line 1043
    .line 1044
    move/from16 v29, v4

    .line 1045
    .line 1046
    move/from16 v25, v8

    .line 1047
    .line 1048
    const/4 v2, 0x0

    .line 1049
    const/16 v4, 0x8

    .line 1050
    .line 1051
    const/4 v8, 0x0

    .line 1052
    :goto_25
    if-ge v8, v4, :cond_2e

    .line 1053
    .line 1054
    invoke-virtual {v0, v13}, Lw5/a;->d(I)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v4

    .line 1058
    if-eqz v4, :cond_2d

    .line 1059
    .line 1060
    const/4 v4, 0x7

    .line 1061
    rsub-int/lit8 v30, v8, 0x7

    .line 1062
    .line 1063
    const/4 v4, 0x1

    .line 1064
    shl-int v24, v4, v30

    .line 1065
    .line 1066
    or-int v2, v2, v24

    .line 1067
    .line 1068
    goto :goto_26

    .line 1069
    :cond_2d
    const/4 v4, 0x1

    .line 1070
    :goto_26
    add-int/2addr v13, v4

    .line 1071
    add-int/2addr v8, v4

    .line 1072
    const/16 v4, 0x8

    .line 1073
    .line 1074
    goto :goto_25

    .line 1075
    :cond_2e
    const/4 v4, 0x1

    .line 1076
    int-to-byte v2, v2

    .line 1077
    aput-byte v2, v1, v14

    .line 1078
    .line 1079
    add-int/2addr v14, v4

    .line 1080
    move/from16 v8, v25

    .line 1081
    .line 1082
    move-object/from16 v2, v28

    .line 1083
    .line 1084
    move/from16 v4, v29

    .line 1085
    .line 1086
    goto :goto_24

    .line 1087
    :cond_2f
    move-object/from16 v28, v2

    .line 1088
    .line 1089
    move/from16 v29, v4

    .line 1090
    .line 1091
    move/from16 v25, v8

    .line 1092
    .line 1093
    const/4 v2, 0x0

    .line 1094
    const/4 v4, 0x1

    .line 1095
    aget v8, v10, v2

    .line 1096
    .line 1097
    add-int v2, v9, v8

    .line 1098
    .line 1099
    new-array v10, v2, [I

    .line 1100
    .line 1101
    const/4 v13, 0x0

    .line 1102
    :goto_27
    if-ge v13, v9, :cond_30

    .line 1103
    .line 1104
    aget-byte v14, v1, v13

    .line 1105
    .line 1106
    and-int/lit16 v14, v14, 0xff

    .line 1107
    .line 1108
    aput v14, v10, v13

    .line 1109
    .line 1110
    add-int/2addr v13, v4

    .line 1111
    goto :goto_27

    .line 1112
    :cond_30
    sget-object v13, Lx5/a;->l:Lx5/a;

    .line 1113
    .line 1114
    new-instance v14, Ljava/util/ArrayList;

    .line 1115
    .line 1116
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    .line 1118
    .line 1119
    move-object/from16 v30, v0

    .line 1120
    .line 1121
    new-instance v0, Lx5/b;

    .line 1122
    .line 1123
    move/from16 v31, v5

    .line 1124
    .line 1125
    filled-new-array {v4}, [I

    .line 1126
    .line 1127
    .line 1128
    move-result-object v5

    .line 1129
    invoke-direct {v0, v13, v5}, Lx5/b;-><init>(Lx5/a;[I)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    .line 1134
    .line 1135
    if-eqz v8, :cond_3e

    .line 1136
    .line 1137
    sub-int/2addr v2, v8

    .line 1138
    if-lez v2, :cond_3d

    .line 1139
    .line 1140
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    if-lt v8, v0, :cond_31

    .line 1145
    .line 1146
    invoke-static {v14, v4}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    check-cast v0, Lx5/b;

    .line 1151
    .line 1152
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1153
    .line 1154
    .line 1155
    move-result v5

    .line 1156
    :goto_28
    if-gt v5, v8, :cond_31

    .line 1157
    .line 1158
    move/from16 v32, v6

    .line 1159
    .line 1160
    new-instance v6, Lx5/b;

    .line 1161
    .line 1162
    add-int/lit8 v24, v5, -0x1

    .line 1163
    .line 1164
    iget v4, v13, Lx5/a;->g:I

    .line 1165
    .line 1166
    add-int v24, v24, v4

    .line 1167
    .line 1168
    iget-object v4, v13, Lx5/a;->a:[I

    .line 1169
    .line 1170
    aget v4, v4, v24

    .line 1171
    .line 1172
    move/from16 v34, v7

    .line 1173
    .line 1174
    const/4 v7, 0x1

    .line 1175
    filled-new-array {v7, v4}, [I

    .line 1176
    .line 1177
    .line 1178
    move-result-object v4

    .line 1179
    invoke-direct {v6, v13, v4}, Lx5/b;-><init>(Lx5/a;[I)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v0, v6}, Lx5/b;->g(Lx5/b;)Lx5/b;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    .line 1188
    .line 1189
    add-int/2addr v5, v7

    .line 1190
    move/from16 v6, v32

    .line 1191
    .line 1192
    move/from16 v7, v34

    .line 1193
    .line 1194
    const/4 v4, 0x1

    .line 1195
    goto :goto_28

    .line 1196
    :cond_31
    move/from16 v32, v6

    .line 1197
    .line 1198
    move/from16 v34, v7

    .line 1199
    .line 1200
    const/4 v7, 0x1

    .line 1201
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    check-cast v0, Lx5/b;

    .line 1206
    .line 1207
    new-array v4, v2, [I

    .line 1208
    .line 1209
    const/4 v5, 0x0

    .line 1210
    invoke-static {v10, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    .line 1212
    .line 1213
    if-eqz v2, :cond_3c

    .line 1214
    .line 1215
    if-le v2, v7, :cond_34

    .line 1216
    .line 1217
    aget v6, v4, v5

    .line 1218
    .line 1219
    if-nez v6, :cond_34

    .line 1220
    .line 1221
    const/4 v6, 0x1

    .line 1222
    :goto_29
    if-ge v6, v2, :cond_32

    .line 1223
    .line 1224
    aget v14, v4, v6

    .line 1225
    .line 1226
    if-nez v14, :cond_32

    .line 1227
    .line 1228
    add-int/2addr v6, v7

    .line 1229
    goto :goto_29

    .line 1230
    :cond_32
    if-ne v6, v2, :cond_33

    .line 1231
    .line 1232
    filled-new-array {v5}, [I

    .line 1233
    .line 1234
    .line 1235
    move-result-object v4

    .line 1236
    goto :goto_2a

    .line 1237
    :cond_33
    sub-int v7, v2, v6

    .line 1238
    .line 1239
    new-array v14, v7, [I

    .line 1240
    .line 1241
    invoke-static {v4, v6, v14, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    .line 1243
    .line 1244
    move-object v4, v14

    .line 1245
    :cond_34
    :goto_2a
    if-ltz v8, :cond_3b

    .line 1246
    .line 1247
    array-length v5, v4

    .line 1248
    add-int v6, v5, v8

    .line 1249
    .line 1250
    new-array v6, v6, [I

    .line 1251
    .line 1252
    const/4 v7, 0x0

    .line 1253
    :goto_2b
    if-ge v7, v5, :cond_35

    .line 1254
    .line 1255
    aget v14, v4, v7

    .line 1256
    .line 1257
    move-object/from16 v33, v4

    .line 1258
    .line 1259
    const/4 v4, 0x1

    .line 1260
    invoke-virtual {v13, v14, v4}, Lx5/a;->c(II)I

    .line 1261
    .line 1262
    .line 1263
    move-result v14

    .line 1264
    aput v14, v6, v7

    .line 1265
    .line 1266
    add-int/2addr v7, v4

    .line 1267
    move-object/from16 v4, v33

    .line 1268
    .line 1269
    goto :goto_2b

    .line 1270
    :cond_35
    new-instance v4, Lx5/b;

    .line 1271
    .line 1272
    invoke-direct {v4, v13, v6}, Lx5/b;-><init>(Lx5/a;[I)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v5, v0, Lx5/b;->a:Lx5/a;

    .line 1276
    .line 1277
    invoke-virtual {v13, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1278
    .line 1279
    .line 1280
    move-result v5

    .line 1281
    if-eqz v5, :cond_3a

    .line 1282
    .line 1283
    invoke-virtual {v0}, Lx5/b;->e()Z

    .line 1284
    .line 1285
    .line 1286
    move-result v5

    .line 1287
    if-nez v5, :cond_39

    .line 1288
    .line 1289
    invoke-virtual {v0}, Lx5/b;->d()I

    .line 1290
    .line 1291
    .line 1292
    move-result v5

    .line 1293
    invoke-virtual {v0, v5}, Lx5/b;->c(I)I

    .line 1294
    .line 1295
    .line 1296
    move-result v5

    .line 1297
    invoke-virtual {v13, v5}, Lx5/a;->b(I)I

    .line 1298
    .line 1299
    .line 1300
    move-result v5

    .line 1301
    iget-object v6, v13, Lx5/a;->c:Lx5/b;

    .line 1302
    .line 1303
    :goto_2c
    invoke-virtual {v4}, Lx5/b;->d()I

    .line 1304
    .line 1305
    .line 1306
    move-result v7

    .line 1307
    invoke-virtual {v0}, Lx5/b;->d()I

    .line 1308
    .line 1309
    .line 1310
    move-result v14

    .line 1311
    if-lt v7, v14, :cond_36

    .line 1312
    .line 1313
    invoke-virtual {v4}, Lx5/b;->e()Z

    .line 1314
    .line 1315
    .line 1316
    move-result v7

    .line 1317
    if-nez v7, :cond_36

    .line 1318
    .line 1319
    invoke-virtual {v4}, Lx5/b;->d()I

    .line 1320
    .line 1321
    .line 1322
    move-result v7

    .line 1323
    invoke-virtual {v0}, Lx5/b;->d()I

    .line 1324
    .line 1325
    .line 1326
    move-result v14

    .line 1327
    sub-int/2addr v7, v14

    .line 1328
    invoke-virtual {v4}, Lx5/b;->d()I

    .line 1329
    .line 1330
    .line 1331
    move-result v14

    .line 1332
    invoke-virtual {v4, v14}, Lx5/b;->c(I)I

    .line 1333
    .line 1334
    .line 1335
    move-result v14

    .line 1336
    invoke-virtual {v13, v14, v5}, Lx5/a;->c(II)I

    .line 1337
    .line 1338
    .line 1339
    move-result v14

    .line 1340
    move/from16 v33, v5

    .line 1341
    .line 1342
    invoke-virtual {v0, v7, v14}, Lx5/b;->h(II)Lx5/b;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v5

    .line 1346
    invoke-virtual {v13, v7, v14}, Lx5/a;->a(II)Lx5/b;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v7

    .line 1350
    invoke-virtual {v6, v7}, Lx5/b;->a(Lx5/b;)Lx5/b;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v6

    .line 1354
    invoke-virtual {v4, v5}, Lx5/b;->a(Lx5/b;)Lx5/b;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v4

    .line 1358
    move/from16 v5, v33

    .line 1359
    .line 1360
    goto :goto_2c

    .line 1361
    :cond_36
    const/4 v0, 0x2

    .line 1362
    new-array v5, v0, [Lx5/b;

    .line 1363
    .line 1364
    const/4 v0, 0x0

    .line 1365
    aput-object v6, v5, v0

    .line 1366
    .line 1367
    const/4 v0, 0x1

    .line 1368
    aput-object v4, v5, v0

    .line 1369
    .line 1370
    aget-object v4, v5, v0

    .line 1371
    .line 1372
    iget-object v4, v4, Lx5/b;->b:[I

    .line 1373
    .line 1374
    array-length v5, v4

    .line 1375
    sub-int v5, v8, v5

    .line 1376
    .line 1377
    const/4 v6, 0x0

    .line 1378
    :goto_2d
    if-ge v6, v5, :cond_37

    .line 1379
    .line 1380
    add-int v7, v2, v6

    .line 1381
    .line 1382
    const/4 v13, 0x0

    .line 1383
    aput v13, v10, v7

    .line 1384
    .line 1385
    add-int/2addr v6, v0

    .line 1386
    goto :goto_2d

    .line 1387
    :cond_37
    const/4 v13, 0x0

    .line 1388
    add-int/2addr v2, v5

    .line 1389
    array-length v0, v4

    .line 1390
    invoke-static {v4, v13, v10, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1391
    .line 1392
    .line 1393
    new-array v0, v8, [B

    .line 1394
    .line 1395
    const/4 v2, 0x0

    .line 1396
    :goto_2e
    if-ge v2, v8, :cond_38

    .line 1397
    .line 1398
    add-int v4, v9, v2

    .line 1399
    .line 1400
    aget v4, v10, v4

    .line 1401
    .line 1402
    int-to-byte v4, v4

    .line 1403
    aput-byte v4, v0, v2

    .line 1404
    .line 1405
    const/4 v4, 0x1

    .line 1406
    add-int/2addr v2, v4

    .line 1407
    goto :goto_2e

    .line 1408
    :cond_38
    const/4 v4, 0x1

    .line 1409
    new-instance v2, LN5/a;

    .line 1410
    .line 1411
    invoke-direct {v2, v1, v0}, LN5/a;-><init>([B[B)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    .line 1418
    .line 1419
    .line 1420
    move-result v11

    .line 1421
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 1422
    .line 1423
    .line 1424
    move-result v12

    .line 1425
    const/4 v0, 0x0

    .line 1426
    aget v1, v15, v0

    .line 1427
    .line 1428
    add-int v7, v34, v1

    .line 1429
    .line 1430
    add-int/lit8 v6, v32, 0x1

    .line 1431
    .line 1432
    move-object/from16 v1, p1

    .line 1433
    .line 1434
    move/from16 v8, v25

    .line 1435
    .line 1436
    move/from16 v14, v26

    .line 1437
    .line 1438
    move-object/from16 v13, v27

    .line 1439
    .line 1440
    move-object/from16 v2, v28

    .line 1441
    .line 1442
    move/from16 v4, v29

    .line 1443
    .line 1444
    move-object/from16 v0, v30

    .line 1445
    .line 1446
    move/from16 v5, v31

    .line 1447
    .line 1448
    const/4 v9, 0x1

    .line 1449
    goto/16 :goto_22

    .line 1450
    .line 1451
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1452
    .line 1453
    const-string v1, "Divide by 0"

    .line 1454
    .line 1455
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1456
    .line 1457
    .line 1458
    throw v0

    .line 1459
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1460
    .line 1461
    const-string v1, "GenericGFPolys do not have same GenericGF field"

    .line 1462
    .line 1463
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1464
    .line 1465
    .line 1466
    throw v0

    .line 1467
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1468
    .line 1469
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1470
    .line 1471
    .line 1472
    throw v0

    .line 1473
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1474
    .line 1475
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1476
    .line 1477
    .line 1478
    throw v0

    .line 1479
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1480
    .line 1481
    const-string v1, "No data bytes provided"

    .line 1482
    .line 1483
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1484
    .line 1485
    .line 1486
    throw v0

    .line 1487
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1488
    .line 1489
    const-string v1, "No error correction bytes"

    .line 1490
    .line 1491
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1492
    .line 1493
    .line 1494
    throw v0

    .line 1495
    :cond_3f
    new-instance v0, Lq5/q;

    .line 1496
    .line 1497
    const-string v1, "Total bytes mismatch"

    .line 1498
    .line 1499
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1500
    .line 1501
    .line 1502
    throw v0

    .line 1503
    :cond_40
    new-instance v0, Lq5/q;

    .line 1504
    .line 1505
    const-string v1, "RS blocks mismatch"

    .line 1506
    .line 1507
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    throw v0

    .line 1511
    :cond_41
    new-instance v0, Lq5/q;

    .line 1512
    .line 1513
    const-string v1, "EC bytes mismatch"

    .line 1514
    .line 1515
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1516
    .line 1517
    .line 1518
    throw v0

    .line 1519
    :cond_42
    new-instance v0, Lq5/q;

    .line 1520
    .line 1521
    const-string v1, "Block ID too large"

    .line 1522
    .line 1523
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1524
    .line 1525
    .line 1526
    throw v0

    .line 1527
    :cond_43
    move-object/from16 v28, v2

    .line 1528
    .line 1529
    move/from16 v29, v4

    .line 1530
    .line 1531
    move v4, v5

    .line 1532
    move-object/from16 v27, v13

    .line 1533
    .line 1534
    move/from16 v26, v14

    .line 1535
    .line 1536
    if-ne v4, v7, :cond_69

    .line 1537
    .line 1538
    new-instance v0, Lw5/a;

    .line 1539
    .line 1540
    invoke-direct {v0}, Lw5/a;-><init>()V

    .line 1541
    .line 1542
    .line 1543
    const/4 v1, 0x0

    .line 1544
    :goto_2f
    if-ge v1, v11, :cond_46

    .line 1545
    .line 1546
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v2

    .line 1550
    :cond_44
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1551
    .line 1552
    .line 1553
    move-result v4

    .line 1554
    if-eqz v4, :cond_45

    .line 1555
    .line 1556
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v4

    .line 1560
    check-cast v4, LN5/a;

    .line 1561
    .line 1562
    iget-object v4, v4, LN5/a;->a:[B

    .line 1563
    .line 1564
    array-length v5, v4

    .line 1565
    if-ge v1, v5, :cond_44

    .line 1566
    .line 1567
    aget-byte v4, v4, v1

    .line 1568
    .line 1569
    const/16 v5, 0x8

    .line 1570
    .line 1571
    invoke-virtual {v0, v4, v5}, Lw5/a;->b(II)V

    .line 1572
    .line 1573
    .line 1574
    goto :goto_30

    .line 1575
    :cond_45
    const/4 v4, 0x1

    .line 1576
    add-int/2addr v1, v4

    .line 1577
    goto :goto_2f

    .line 1578
    :cond_46
    const/4 v1, 0x0

    .line 1579
    :goto_31
    if-ge v1, v12, :cond_49

    .line 1580
    .line 1581
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v2

    .line 1585
    :cond_47
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1586
    .line 1587
    .line 1588
    move-result v4

    .line 1589
    if-eqz v4, :cond_48

    .line 1590
    .line 1591
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v4

    .line 1595
    check-cast v4, LN5/a;

    .line 1596
    .line 1597
    iget-object v4, v4, LN5/a;->b:[B

    .line 1598
    .line 1599
    array-length v5, v4

    .line 1600
    if-ge v1, v5, :cond_47

    .line 1601
    .line 1602
    aget-byte v4, v4, v1

    .line 1603
    .line 1604
    const/16 v5, 0x8

    .line 1605
    .line 1606
    invoke-virtual {v0, v4, v5}, Lw5/a;->b(II)V

    .line 1607
    .line 1608
    .line 1609
    goto :goto_32

    .line 1610
    :cond_48
    const/4 v4, 0x1

    .line 1611
    add-int/2addr v1, v4

    .line 1612
    goto :goto_31

    .line 1613
    :cond_49
    invoke-virtual {v0}, Lw5/a;->g()I

    .line 1614
    .line 1615
    .line 1616
    move-result v1

    .line 1617
    move/from16 v2, v29

    .line 1618
    .line 1619
    if-ne v2, v1, :cond_68

    .line 1620
    .line 1621
    move-object/from16 v6, v28

    .line 1622
    .line 1623
    iget v1, v6, LL5/f;->a:I

    .line 1624
    .line 1625
    const/4 v2, 0x4

    .line 1626
    mul-int/lit8 v1, v1, 0x4

    .line 1627
    .line 1628
    const/16 v2, 0x11

    .line 1629
    .line 1630
    add-int/2addr v1, v2

    .line 1631
    new-instance v2, LV/b;

    .line 1632
    .line 1633
    const/4 v3, 0x6

    .line 1634
    const/4 v4, 0x0

    .line 1635
    invoke-direct {v2, v1, v1, v3, v4}, LV/b;-><init>(IIII)V

    .line 1636
    .line 1637
    .line 1638
    sget-object v1, Lq5/d;->K:Lq5/d;

    .line 1639
    .line 1640
    move-object/from16 v8, p1

    .line 1641
    .line 1642
    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 1643
    .line 1644
    .line 1645
    move-result v3

    .line 1646
    if-eqz v3, :cond_4a

    .line 1647
    .line 1648
    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v1

    .line 1652
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v1

    .line 1656
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1657
    .line 1658
    .line 1659
    move-result v1

    .line 1660
    const/16 v9, 0x8

    .line 1661
    .line 1662
    if-ltz v1, :cond_4b

    .line 1663
    .line 1664
    if-ge v1, v9, :cond_4b

    .line 1665
    .line 1666
    :goto_33
    const/4 v11, -0x1

    .line 1667
    goto :goto_34

    .line 1668
    :cond_4a
    const/16 v9, 0x8

    .line 1669
    .line 1670
    :cond_4b
    const/4 v1, -0x1

    .line 1671
    goto :goto_33

    .line 1672
    :goto_34
    if-ne v1, v11, :cond_64

    .line 1673
    .line 1674
    const v1, 0x7fffffff

    .line 1675
    .line 1676
    .line 1677
    const/4 v7, -0x1

    .line 1678
    const/4 v10, 0x0

    .line 1679
    :goto_35
    if-ge v10, v9, :cond_63

    .line 1680
    .line 1681
    move-object/from16 v13, v27

    .line 1682
    .line 1683
    invoke-static {v0, v13, v6, v10, v2}, LN5/b;->a(Lw5/a;LL5/b;LL5/f;ILV/b;)V

    .line 1684
    .line 1685
    .line 1686
    const/4 v3, 0x1

    .line 1687
    invoke-static {v2, v3}, Lcom/bumptech/glide/d;->b(LV/b;Z)I

    .line 1688
    .line 1689
    .line 1690
    move-result v4

    .line 1691
    const/4 v3, 0x0

    .line 1692
    invoke-static {v2, v3}, Lcom/bumptech/glide/d;->b(LV/b;Z)I

    .line 1693
    .line 1694
    .line 1695
    move-result v5

    .line 1696
    add-int/2addr v5, v4

    .line 1697
    iget-object v3, v2, LV/b;->d:Ljava/lang/Object;

    .line 1698
    .line 1699
    check-cast v3, [[B

    .line 1700
    .line 1701
    iget v4, v2, LV/b;->b:I

    .line 1702
    .line 1703
    iget v8, v2, LV/b;->c:I

    .line 1704
    .line 1705
    const/4 v11, 0x0

    .line 1706
    const/4 v12, 0x0

    .line 1707
    const/4 v14, 0x1

    .line 1708
    :goto_36
    add-int/lit8 v15, v8, -0x1

    .line 1709
    .line 1710
    if-ge v11, v15, :cond_4e

    .line 1711
    .line 1712
    aget-object v15, v3, v11

    .line 1713
    .line 1714
    move/from16 p0, v7

    .line 1715
    .line 1716
    const/4 v9, 0x0

    .line 1717
    :goto_37
    add-int/lit8 v7, v4, -0x1

    .line 1718
    .line 1719
    if-ge v9, v7, :cond_4d

    .line 1720
    .line 1721
    aget-byte v7, v15, v9

    .line 1722
    .line 1723
    add-int/lit8 v18, v9, 0x1

    .line 1724
    .line 1725
    move/from16 v25, v4

    .line 1726
    .line 1727
    aget-byte v4, v15, v18

    .line 1728
    .line 1729
    if-ne v7, v4, :cond_4c

    .line 1730
    .line 1731
    add-int/lit8 v4, v11, 0x1

    .line 1732
    .line 1733
    aget-object v4, v3, v4

    .line 1734
    .line 1735
    aget-byte v9, v4, v9

    .line 1736
    .line 1737
    if-ne v7, v9, :cond_4c

    .line 1738
    .line 1739
    aget-byte v4, v4, v18

    .line 1740
    .line 1741
    if-ne v7, v4, :cond_4c

    .line 1742
    .line 1743
    add-int/2addr v12, v14

    .line 1744
    :cond_4c
    move/from16 v9, v18

    .line 1745
    .line 1746
    move/from16 v4, v25

    .line 1747
    .line 1748
    goto :goto_37

    .line 1749
    :cond_4d
    move/from16 v25, v4

    .line 1750
    .line 1751
    add-int/2addr v11, v14

    .line 1752
    move/from16 v7, p0

    .line 1753
    .line 1754
    const/16 v9, 0x8

    .line 1755
    .line 1756
    goto :goto_36

    .line 1757
    :cond_4e
    move/from16 p0, v7

    .line 1758
    .line 1759
    mul-int/lit8 v12, v12, 0x3

    .line 1760
    .line 1761
    add-int/2addr v12, v5

    .line 1762
    iget-object v3, v2, LV/b;->d:Ljava/lang/Object;

    .line 1763
    .line 1764
    check-cast v3, [[B

    .line 1765
    .line 1766
    iget v4, v2, LV/b;->b:I

    .line 1767
    .line 1768
    iget v5, v2, LV/b;->c:I

    .line 1769
    .line 1770
    const/4 v7, 0x0

    .line 1771
    const/4 v8, 0x0

    .line 1772
    :goto_38
    if-ge v7, v5, :cond_5e

    .line 1773
    .line 1774
    const/4 v9, 0x0

    .line 1775
    :goto_39
    if-ge v9, v4, :cond_5d

    .line 1776
    .line 1777
    aget-object v11, v3, v7

    .line 1778
    .line 1779
    const/4 v14, 0x6

    .line 1780
    add-int/lit8 v15, v9, 0x6

    .line 1781
    .line 1782
    if-ge v15, v4, :cond_54

    .line 1783
    .line 1784
    aget-byte v14, v11, v9

    .line 1785
    .line 1786
    move/from16 v18, v4

    .line 1787
    .line 1788
    const/4 v4, 0x1

    .line 1789
    if-ne v14, v4, :cond_53

    .line 1790
    .line 1791
    add-int/lit8 v14, v9, 0x1

    .line 1792
    .line 1793
    aget-byte v14, v11, v14

    .line 1794
    .line 1795
    if-nez v14, :cond_53

    .line 1796
    .line 1797
    const/4 v14, 0x2

    .line 1798
    add-int/lit8 v24, v9, 0x2

    .line 1799
    .line 1800
    aget-byte v14, v11, v24

    .line 1801
    .line 1802
    if-ne v14, v4, :cond_53

    .line 1803
    .line 1804
    add-int/lit8 v14, v9, 0x3

    .line 1805
    .line 1806
    aget-byte v14, v11, v14

    .line 1807
    .line 1808
    if-ne v14, v4, :cond_53

    .line 1809
    .line 1810
    const/4 v14, 0x4

    .line 1811
    add-int/lit8 v23, v9, 0x4

    .line 1812
    .line 1813
    aget-byte v14, v11, v23

    .line 1814
    .line 1815
    if-ne v14, v4, :cond_53

    .line 1816
    .line 1817
    const/4 v14, 0x5

    .line 1818
    add-int/lit8 v23, v9, 0x5

    .line 1819
    .line 1820
    aget-byte v14, v11, v23

    .line 1821
    .line 1822
    if-nez v14, :cond_53

    .line 1823
    .line 1824
    aget-byte v14, v11, v15

    .line 1825
    .line 1826
    if-ne v14, v4, :cond_53

    .line 1827
    .line 1828
    const/4 v14, 0x4

    .line 1829
    add-int/lit8 v15, v9, -0x4

    .line 1830
    .line 1831
    const/4 v14, 0x0

    .line 1832
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    .line 1833
    .line 1834
    .line 1835
    move-result v15

    .line 1836
    array-length v14, v11

    .line 1837
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    .line 1838
    .line 1839
    .line 1840
    move-result v14

    .line 1841
    :goto_3a
    if-ge v15, v14, :cond_52

    .line 1842
    .line 1843
    move/from16 p1, v14

    .line 1844
    .line 1845
    aget-byte v14, v11, v15

    .line 1846
    .line 1847
    if-ne v14, v4, :cond_51

    .line 1848
    .line 1849
    const/4 v14, 0x7

    .line 1850
    add-int/lit8 v15, v9, 0x7

    .line 1851
    .line 1852
    const/16 v14, 0xb

    .line 1853
    .line 1854
    add-int/lit8 v4, v9, 0xb

    .line 1855
    .line 1856
    const/4 v14, 0x0

    .line 1857
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    .line 1858
    .line 1859
    .line 1860
    move-result v15

    .line 1861
    array-length v14, v11

    .line 1862
    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    .line 1863
    .line 1864
    .line 1865
    move-result v4

    .line 1866
    :goto_3b
    if-ge v15, v4, :cond_50

    .line 1867
    .line 1868
    aget-byte v14, v11, v15

    .line 1869
    .line 1870
    move/from16 p1, v4

    .line 1871
    .line 1872
    const/4 v4, 0x1

    .line 1873
    if-ne v14, v4, :cond_4f

    .line 1874
    .line 1875
    goto :goto_3d

    .line 1876
    :cond_4f
    add-int/2addr v15, v4

    .line 1877
    move/from16 v4, p1

    .line 1878
    .line 1879
    goto :goto_3b

    .line 1880
    :cond_50
    const/4 v4, 0x1

    .line 1881
    goto :goto_3c

    .line 1882
    :cond_51
    add-int/2addr v15, v4

    .line 1883
    move/from16 v14, p1

    .line 1884
    .line 1885
    goto :goto_3a

    .line 1886
    :cond_52
    :goto_3c
    add-int/2addr v8, v4

    .line 1887
    :cond_53
    :goto_3d
    const/4 v14, 0x6

    .line 1888
    goto :goto_3e

    .line 1889
    :cond_54
    move/from16 v18, v4

    .line 1890
    .line 1891
    goto :goto_3d

    .line 1892
    :goto_3e
    add-int/lit8 v4, v7, 0x6

    .line 1893
    .line 1894
    if-ge v4, v5, :cond_5c

    .line 1895
    .line 1896
    aget-object v11, v3, v7

    .line 1897
    .line 1898
    aget-byte v11, v11, v9

    .line 1899
    .line 1900
    const/4 v15, 0x1

    .line 1901
    if-ne v11, v15, :cond_5b

    .line 1902
    .line 1903
    add-int/lit8 v11, v7, 0x1

    .line 1904
    .line 1905
    aget-object v11, v3, v11

    .line 1906
    .line 1907
    aget-byte v11, v11, v9

    .line 1908
    .line 1909
    if-nez v11, :cond_5b

    .line 1910
    .line 1911
    const/4 v11, 0x2

    .line 1912
    add-int/lit8 v20, v7, 0x2

    .line 1913
    .line 1914
    aget-object v11, v3, v20

    .line 1915
    .line 1916
    aget-byte v11, v11, v9

    .line 1917
    .line 1918
    if-ne v11, v15, :cond_5b

    .line 1919
    .line 1920
    add-int/lit8 v11, v7, 0x3

    .line 1921
    .line 1922
    aget-object v11, v3, v11

    .line 1923
    .line 1924
    aget-byte v11, v11, v9

    .line 1925
    .line 1926
    if-ne v11, v15, :cond_5b

    .line 1927
    .line 1928
    const/16 v20, 0x4

    .line 1929
    .line 1930
    add-int/lit8 v11, v7, 0x4

    .line 1931
    .line 1932
    aget-object v11, v3, v11

    .line 1933
    .line 1934
    aget-byte v11, v11, v9

    .line 1935
    .line 1936
    if-ne v11, v15, :cond_5a

    .line 1937
    .line 1938
    const/16 v21, 0x5

    .line 1939
    .line 1940
    add-int/lit8 v11, v7, 0x5

    .line 1941
    .line 1942
    aget-object v11, v3, v11

    .line 1943
    .line 1944
    aget-byte v11, v11, v9

    .line 1945
    .line 1946
    if-nez v11, :cond_59

    .line 1947
    .line 1948
    aget-object v4, v3, v4

    .line 1949
    .line 1950
    aget-byte v4, v4, v9

    .line 1951
    .line 1952
    if-ne v4, v15, :cond_59

    .line 1953
    .line 1954
    add-int/lit8 v4, v7, -0x4

    .line 1955
    .line 1956
    const/4 v11, 0x0

    .line 1957
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    .line 1958
    .line 1959
    .line 1960
    move-result v4

    .line 1961
    array-length v14, v3

    .line 1962
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    .line 1963
    .line 1964
    .line 1965
    move-result v14

    .line 1966
    :goto_3f
    if-ge v4, v14, :cond_58

    .line 1967
    .line 1968
    aget-object v23, v3, v4

    .line 1969
    .line 1970
    aget-byte v11, v23, v9

    .line 1971
    .line 1972
    if-ne v11, v15, :cond_57

    .line 1973
    .line 1974
    const/16 v22, 0x7

    .line 1975
    .line 1976
    add-int/lit8 v4, v7, 0x7

    .line 1977
    .line 1978
    const/16 v19, 0xb

    .line 1979
    .line 1980
    add-int/lit8 v11, v7, 0xb

    .line 1981
    .line 1982
    const/4 v14, 0x0

    .line 1983
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    .line 1984
    .line 1985
    .line 1986
    move-result v4

    .line 1987
    array-length v14, v3

    .line 1988
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    .line 1989
    .line 1990
    .line 1991
    move-result v11

    .line 1992
    :goto_40
    if-ge v4, v11, :cond_56

    .line 1993
    .line 1994
    aget-object v14, v3, v4

    .line 1995
    .line 1996
    aget-byte v14, v14, v9

    .line 1997
    .line 1998
    if-ne v14, v15, :cond_55

    .line 1999
    .line 2000
    const/4 v11, 0x0

    .line 2001
    goto :goto_45

    .line 2002
    :cond_55
    add-int/2addr v4, v15

    .line 2003
    goto :goto_40

    .line 2004
    :cond_56
    const/4 v11, 0x0

    .line 2005
    goto :goto_41

    .line 2006
    :cond_57
    const/4 v11, 0x0

    .line 2007
    const/16 v19, 0xb

    .line 2008
    .line 2009
    const/16 v22, 0x7

    .line 2010
    .line 2011
    add-int/2addr v4, v15

    .line 2012
    goto :goto_3f

    .line 2013
    :cond_58
    const/16 v19, 0xb

    .line 2014
    .line 2015
    const/16 v22, 0x7

    .line 2016
    .line 2017
    :goto_41
    add-int/2addr v8, v15

    .line 2018
    goto :goto_45

    .line 2019
    :cond_59
    const/4 v11, 0x0

    .line 2020
    const/16 v19, 0xb

    .line 2021
    .line 2022
    :goto_42
    const/16 v22, 0x7

    .line 2023
    .line 2024
    goto :goto_45

    .line 2025
    :cond_5a
    const/4 v11, 0x0

    .line 2026
    const/16 v19, 0xb

    .line 2027
    .line 2028
    :goto_43
    const/16 v21, 0x5

    .line 2029
    .line 2030
    goto :goto_42

    .line 2031
    :cond_5b
    const/4 v11, 0x0

    .line 2032
    :goto_44
    const/16 v19, 0xb

    .line 2033
    .line 2034
    const/16 v20, 0x4

    .line 2035
    .line 2036
    goto :goto_43

    .line 2037
    :cond_5c
    const/4 v11, 0x0

    .line 2038
    const/4 v15, 0x1

    .line 2039
    goto :goto_44

    .line 2040
    :goto_45
    add-int/2addr v9, v15

    .line 2041
    move/from16 v4, v18

    .line 2042
    .line 2043
    goto/16 :goto_39

    .line 2044
    .line 2045
    :cond_5d
    move/from16 v18, v4

    .line 2046
    .line 2047
    const/4 v11, 0x0

    .line 2048
    const/4 v15, 0x1

    .line 2049
    const/16 v19, 0xb

    .line 2050
    .line 2051
    const/16 v20, 0x4

    .line 2052
    .line 2053
    const/16 v21, 0x5

    .line 2054
    .line 2055
    const/16 v22, 0x7

    .line 2056
    .line 2057
    add-int/2addr v7, v15

    .line 2058
    goto/16 :goto_38

    .line 2059
    .line 2060
    :cond_5e
    const/16 v9, 0x28

    .line 2061
    .line 2062
    const/4 v11, 0x0

    .line 2063
    const/16 v19, 0xb

    .line 2064
    .line 2065
    const/16 v20, 0x4

    .line 2066
    .line 2067
    const/16 v21, 0x5

    .line 2068
    .line 2069
    const/16 v22, 0x7

    .line 2070
    .line 2071
    mul-int/lit8 v8, v8, 0x28

    .line 2072
    .line 2073
    add-int/2addr v8, v12

    .line 2074
    iget-object v3, v2, LV/b;->d:Ljava/lang/Object;

    .line 2075
    .line 2076
    check-cast v3, [[B

    .line 2077
    .line 2078
    iget v4, v2, LV/b;->b:I

    .line 2079
    .line 2080
    iget v5, v2, LV/b;->c:I

    .line 2081
    .line 2082
    const/4 v7, 0x0

    .line 2083
    const/4 v12, 0x0

    .line 2084
    :goto_46
    if-ge v7, v5, :cond_61

    .line 2085
    .line 2086
    aget-object v14, v3, v7

    .line 2087
    .line 2088
    move v15, v12

    .line 2089
    const/4 v12, 0x0

    .line 2090
    :goto_47
    if-ge v12, v4, :cond_60

    .line 2091
    .line 2092
    aget-byte v9, v14, v12

    .line 2093
    .line 2094
    const/4 v11, 0x1

    .line 2095
    if-ne v9, v11, :cond_5f

    .line 2096
    .line 2097
    add-int/2addr v15, v11

    .line 2098
    :cond_5f
    add-int/2addr v12, v11

    .line 2099
    const/16 v9, 0x28

    .line 2100
    .line 2101
    const/4 v11, 0x0

    .line 2102
    goto :goto_47

    .line 2103
    :cond_60
    const/4 v11, 0x1

    .line 2104
    add-int/2addr v7, v11

    .line 2105
    move v12, v15

    .line 2106
    const/16 v9, 0x28

    .line 2107
    .line 2108
    const/4 v11, 0x0

    .line 2109
    goto :goto_46

    .line 2110
    :cond_61
    const/4 v11, 0x1

    .line 2111
    iget v3, v2, LV/b;->c:I

    .line 2112
    .line 2113
    iget v4, v2, LV/b;->b:I

    .line 2114
    .line 2115
    mul-int v3, v3, v4

    .line 2116
    .line 2117
    shl-int/lit8 v4, v12, 0x1

    .line 2118
    .line 2119
    sub-int/2addr v4, v3

    .line 2120
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 2121
    .line 2122
    .line 2123
    move-result v4

    .line 2124
    const/16 v9, 0xa

    .line 2125
    .line 2126
    mul-int/lit8 v4, v4, 0xa

    .line 2127
    .line 2128
    div-int/2addr v4, v3

    .line 2129
    mul-int/lit8 v4, v4, 0xa

    .line 2130
    .line 2131
    add-int/2addr v4, v8

    .line 2132
    if-ge v4, v1, :cond_62

    .line 2133
    .line 2134
    move v1, v4

    .line 2135
    move v7, v10

    .line 2136
    :goto_48
    const/4 v3, 0x1

    .line 2137
    goto :goto_49

    .line 2138
    :cond_62
    move/from16 v7, p0

    .line 2139
    .line 2140
    goto :goto_48

    .line 2141
    :goto_49
    add-int/2addr v10, v3

    .line 2142
    move-object/from16 v27, v13

    .line 2143
    .line 2144
    const/16 v9, 0x8

    .line 2145
    .line 2146
    goto/16 :goto_35

    .line 2147
    .line 2148
    :cond_63
    move/from16 p0, v7

    .line 2149
    .line 2150
    move-object/from16 v13, v27

    .line 2151
    .line 2152
    const/4 v3, 0x1

    .line 2153
    move/from16 v1, p0

    .line 2154
    .line 2155
    goto :goto_4a

    .line 2156
    :cond_64
    move-object/from16 v13, v27

    .line 2157
    .line 2158
    const/4 v3, 0x1

    .line 2159
    :goto_4a
    invoke-static {v0, v13, v6, v1, v2}, LN5/b;->a(Lw5/a;LL5/b;LL5/f;ILV/b;)V

    .line 2160
    .line 2161
    .line 2162
    iget v0, v2, LV/b;->b:I

    .line 2163
    .line 2164
    iget v1, v2, LV/b;->c:I

    .line 2165
    .line 2166
    shl-int/lit8 v4, v26, 0x1

    .line 2167
    .line 2168
    add-int v3, v0, v4

    .line 2169
    .line 2170
    add-int/2addr v4, v1

    .line 2171
    const/16 v5, 0xc8

    .line 2172
    .line 2173
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 2174
    .line 2175
    .line 2176
    move-result v6

    .line 2177
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 2178
    .line 2179
    .line 2180
    move-result v5

    .line 2181
    div-int v3, v6, v3

    .line 2182
    .line 2183
    div-int v4, v5, v4

    .line 2184
    .line 2185
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 2186
    .line 2187
    .line 2188
    move-result v3

    .line 2189
    mul-int v4, v0, v3

    .line 2190
    .line 2191
    sub-int v4, v6, v4

    .line 2192
    .line 2193
    const/4 v12, 0x2

    .line 2194
    div-int/2addr v4, v12

    .line 2195
    mul-int v7, v1, v3

    .line 2196
    .line 2197
    sub-int v7, v5, v7

    .line 2198
    .line 2199
    div-int/2addr v7, v12

    .line 2200
    new-instance v8, Lw5/b;

    .line 2201
    .line 2202
    invoke-direct {v8, v6, v5}, Lw5/b;-><init>(II)V

    .line 2203
    .line 2204
    .line 2205
    const/4 v10, 0x0

    .line 2206
    :goto_4b
    if-ge v10, v1, :cond_67

    .line 2207
    .line 2208
    move v6, v4

    .line 2209
    const/4 v5, 0x0

    .line 2210
    :goto_4c
    if-ge v5, v0, :cond_66

    .line 2211
    .line 2212
    invoke-virtual {v2, v5, v10}, LV/b;->f(II)B

    .line 2213
    .line 2214
    .line 2215
    move-result v9

    .line 2216
    const/4 v11, 0x1

    .line 2217
    if-ne v9, v11, :cond_65

    .line 2218
    .line 2219
    invoke-virtual {v8, v6, v7, v3, v3}, Lw5/b;->g(IIII)V

    .line 2220
    .line 2221
    .line 2222
    :cond_65
    add-int/2addr v5, v11

    .line 2223
    add-int/2addr v6, v3

    .line 2224
    goto :goto_4c

    .line 2225
    :cond_66
    const/4 v11, 0x1

    .line 2226
    add-int/2addr v10, v11

    .line 2227
    add-int/2addr v7, v3

    .line 2228
    goto :goto_4b

    .line 2229
    :cond_67
    return-object v8

    .line 2230
    :cond_68
    new-instance v1, Lq5/q;

    .line 2231
    .line 2232
    const-string v3, "Interleaving error: "

    .line 2233
    .line 2234
    const-string v4, " and "

    .line 2235
    .line 2236
    invoke-static {v3, v2, v4}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v2

    .line 2240
    invoke-virtual {v0}, Lw5/a;->g()I

    .line 2241
    .line 2242
    .line 2243
    move-result v0

    .line 2244
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2245
    .line 2246
    .line 2247
    const-string v0, " differ."

    .line 2248
    .line 2249
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    .line 2251
    .line 2252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v0

    .line 2256
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2257
    .line 2258
    .line 2259
    throw v1

    .line 2260
    :cond_69
    new-instance v0, Lq5/q;

    .line 2261
    .line 2262
    const-string v1, "Data bytes does not match offset"

    .line 2263
    .line 2264
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2265
    .line 2266
    .line 2267
    throw v0

    .line 2268
    :cond_6a
    new-instance v0, Lq5/q;

    .line 2269
    .line 2270
    const-string v1, "Number of bits and data bytes does not match"

    .line 2271
    .line 2272
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2273
    .line 2274
    .line 2275
    throw v0

    .line 2276
    :cond_6b
    new-instance v0, Lq5/q;

    .line 2277
    .line 2278
    const-string v1, "Bits size does not equal capacity"

    .line 2279
    .line 2280
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2281
    .line 2282
    .line 2283
    throw v0

    .line 2284
    :cond_6c
    move-object/from16 v30, v0

    .line 2285
    .line 2286
    new-instance v0, Lq5/q;

    .line 2287
    .line 2288
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2289
    .line 2290
    const-string v2, "data bits cannot fit in the QR Code"

    .line 2291
    .line 2292
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2293
    .line 2294
    .line 2295
    move-object/from16 v2, v30

    .line 2296
    .line 2297
    iget v2, v2, Lw5/a;->H:I

    .line 2298
    .line 2299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2300
    .line 2301
    .line 2302
    const-string v2, " > "

    .line 2303
    .line 2304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    .line 2306
    .line 2307
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2308
    .line 2309
    .line 2310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v1

    .line 2314
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2315
    .line 2316
    .line 2317
    throw v0

    .line 2318
    :cond_6d
    new-instance v0, Lq5/q;

    .line 2319
    .line 2320
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2321
    .line 2322
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2323
    .line 2324
    .line 2325
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2326
    .line 2327
    .line 2328
    const-string v2, " is bigger than "

    .line 2329
    .line 2330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    .line 2332
    .line 2333
    const/4 v14, 0x1

    .line 2334
    sub-int/2addr v5, v14

    .line 2335
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2336
    .line 2337
    .line 2338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2339
    .line 2340
    .line 2341
    move-result-object v1

    .line 2342
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2343
    .line 2344
    .line 2345
    throw v0

    .line 2346
    :cond_6e
    move-object v8, v1

    .line 2347
    move/from16 v26, v14

    .line 2348
    .line 2349
    const/4 v1, 0x0

    .line 2350
    const/16 v9, 0xa

    .line 2351
    .line 2352
    const/4 v11, -0x1

    .line 2353
    const/4 v12, 0x2

    .line 2354
    const/4 v14, 0x1

    .line 2355
    const/16 v19, 0xb

    .line 2356
    .line 2357
    const/16 v20, 0x4

    .line 2358
    .line 2359
    const/16 v21, 0x5

    .line 2360
    .line 2361
    const/16 v22, 0x7

    .line 2362
    .line 2363
    add-int/2addr v0, v14

    .line 2364
    move-object v1, v8

    .line 2365
    move/from16 v14, v26

    .line 2366
    .line 2367
    goto/16 :goto_15

    .line 2368
    .line 2369
    :cond_6f
    new-instance v0, Lq5/q;

    .line 2370
    .line 2371
    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2372
    .line 2373
    .line 2374
    throw v0

    .line 2375
    :cond_70
    move-object v8, v1

    .line 2376
    move/from16 v26, v14

    .line 2377
    .line 2378
    const/4 v1, 0x0

    .line 2379
    const/16 v9, 0xa

    .line 2380
    .line 2381
    const/4 v11, -0x1

    .line 2382
    const/4 v12, 0x2

    .line 2383
    const/4 v14, 0x1

    .line 2384
    const/16 v19, 0xb

    .line 2385
    .line 2386
    const/16 v20, 0x4

    .line 2387
    .line 2388
    const/16 v21, 0x5

    .line 2389
    .line 2390
    const/16 v22, 0x7

    .line 2391
    .line 2392
    add-int/2addr v2, v14

    .line 2393
    move-object/from16 v0, p0

    .line 2394
    .line 2395
    move-object v1, v8

    .line 2396
    move/from16 v14, v26

    .line 2397
    .line 2398
    const/4 v11, 0x2

    .line 2399
    goto/16 :goto_13

    .line 2400
    .line 2401
    :cond_71
    new-instance v0, Lq5/q;

    .line 2402
    .line 2403
    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2404
    .line 2405
    .line 2406
    throw v0

    .line 2407
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2408
    .line 2409
    const-string v1, "Found empty contents"

    .line 2410
    .line 2411
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2412
    .line 2413
    .line 2414
    throw v0
.end method

.method public static s0(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Ad failed to load : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lp3/h;->f(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p2}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 26
    .line 27
    iget-object p1, p1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 28
    .line 29
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static t(ILandroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, LM3/b;

    .line 9
    .line 10
    const-string v1, "Overread allowed size end="

    .line 11
    .line 12
    invoke-static {v1, p0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0, p1}, LM3/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static t0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    throw p0
.end method

.method public static u(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lf/b;->I:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "com.google.android.feature.services_updater"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v0, "cn.google.services"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sput-object p0, Lf/b;->I:Ljava/lang/Boolean;

    .line 32
    .line 33
    :cond_1
    sget-object p0, Lf/b;->I:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public static u0(Ljava/util/Set;Lcom/google/android/gms/internal/ads/yE;)Lcom/google/android/gms/internal/ads/ZA;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    instance-of v3, p0, Ljava/util/SortedSet;

    .line 5
    .line 6
    if-eqz v3, :cond_1

    .line 7
    .line 8
    check-cast p0, Ljava/util/SortedSet;

    .line 9
    .line 10
    instance-of v3, p0, Lcom/google/android/gms/internal/ads/ZA;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    check-cast p0, Lcom/google/android/gms/internal/ads/ZA;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ZA;->H:Lcom/google/android/gms/internal/ads/yz;

    .line 17
    .line 18
    new-instance v4, Lcom/google/android/gms/internal/ads/zz;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-array v2, v2, [Lcom/google/android/gms/internal/ads/yz;

    .line 24
    .line 25
    aput-object v3, v2, v1

    .line 26
    .line 27
    aput-object p1, v2, v0

    .line 28
    .line 29
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/ads/zz;-><init>(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/google/android/gms/internal/ads/aB;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ZA;->G:Ljava/util/Collection;

    .line 39
    .line 40
    check-cast p0, Ljava/util/SortedSet;

    .line 41
    .line 42
    invoke-direct {p1, p0, v4}, Lcom/google/android/gms/internal/ads/ZA;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/yz;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/aB;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ZA;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/yz;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v0

    .line 55
    :goto_0
    return-object p1

    .line 56
    :cond_1
    instance-of v3, p0, Lcom/google/android/gms/internal/ads/ZA;

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    check-cast p0, Lcom/google/android/gms/internal/ads/ZA;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ZA;->H:Lcom/google/android/gms/internal/ads/yz;

    .line 63
    .line 64
    new-instance v4, Lcom/google/android/gms/internal/ads/zz;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-array v2, v2, [Lcom/google/android/gms/internal/ads/yz;

    .line 70
    .line 71
    aput-object v3, v2, v1

    .line 72
    .line 73
    aput-object p1, v2, v0

    .line 74
    .line 75
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/ads/zz;-><init>(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lcom/google/android/gms/internal/ads/ZA;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ZA;->G:Ljava/util/Collection;

    .line 85
    .line 86
    check-cast p0, Ljava/util/Set;

    .line 87
    .line 88
    invoke-direct {p1, p0, v4}, Lcom/google/android/gms/internal/ads/ZA;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/yz;)V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/ZA;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ZA;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/yz;)V

    .line 98
    .line 99
    .line 100
    return-object v0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lf/b;->G:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "android.hardware.type.watch"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lf/b;->G:Ljava/lang/Boolean;

    .line 20
    .line 21
    :cond_0
    sget-object v0, Lf/b;->G:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v1, 0x18

    .line 32
    .line 33
    if-lt v0, v1, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-static {p0}, Lf/b;->i0(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    invoke-static {}, LU2/m;->a()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-static {}, LU2/m;->b()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    :cond_2
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_3
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public static v0(Landroid/os/Parcel;II)V
    .locals 0

    .line 1
    shl-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static w0(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static x0(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Ljava/util/Set;

    .line 11
    .line 12
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :catch_0
    :cond_1
    return v2
.end method

.method public static y(ILandroid/os/Parcel;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p1, p0, v0}, Lf/b;->q0(Landroid/os/Parcel;II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static y0(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "admob"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "init_without_write"

    .line 16
    .line 17
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "crash_without_write"

    .line 22
    .line 23
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static z(ILandroid/os/Parcel;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    invoke-static {p1, p0, v0}, Lf/b;->g0(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static z0(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/MA;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/MA;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/MA;->zza()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-le v0, v2, :cond_3

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return v1

    .line 55
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    or-int/2addr v1, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    return v1
.end method


# virtual methods
.method public abstract b0()Ljava/util/Map;
.end method

.method public l0()Lcom/google/android/gms/internal/ads/KA;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/KA;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/KA;-><init>(Lf/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract w(I)Landroid/view/View;
.end method

.method public abstract x()Z
.end method
