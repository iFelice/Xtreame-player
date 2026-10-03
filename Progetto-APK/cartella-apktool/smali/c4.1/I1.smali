.class public final Lc4/I1;
.super Lc4/s0;
.source "SourceFile"


# static fields
.field public static final O:[Ljava/lang/String;

.field public static final P:[Ljava/lang/String;


# instance fields
.field public I:Ljava/security/SecureRandom;

.field public final J:Ljava/util/concurrent/atomic/AtomicLong;

.field public K:I

.field public L:LI1/d;

.field public M:Ljava/lang/Boolean;

.field public N:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "google_"

    .line 2
    .line 3
    const-string v1, "ga_"

    .line 4
    .line 5
    const-string v2, "firebase_"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lc4/I1;->O:[Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "_err"

    .line 14
    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lc4/I1;->P:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lc4/l0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lc4/s0;-><init>(Lc4/l0;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lc4/I1;->N:Ljava/lang/Integer;

    .line 6
    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lc4/I1;->J:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    return-void
.end method

.method public static C(Lc4/S0;Landroid/os/Bundle;Z)V
    .locals 4

    .line 1
    const-string v0, "_si"

    .line 2
    .line 3
    const-string v1, "_sn"

    .line 4
    .line 5
    const-string v2, "_sc"

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    if-eqz p0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    goto :goto_3

    .line 22
    :cond_1
    :goto_0
    iget-object p2, p0, Lc4/S0;->a:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    iget-object p2, p0, Lc4/S0;->b:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    iget-wide v1, p0, Lc4/S0;->c:J

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    .line 51
    .line 52
    if-nez p0, :cond_5

    .line 53
    .line 54
    if-eqz p2, :cond_5

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    return-void
.end method

.method public static G(Lc4/H1;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lc4/I1;->p0(ILandroid/os/Bundle;)Z

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p3, 0x6

    .line 25
    if-eq p2, p3, :cond_1

    .line 26
    .line 27
    const/4 p3, 0x7

    .line 28
    if-eq p2, p3, :cond_1

    .line 29
    .line 30
    const/4 p3, 0x2

    .line 31
    if-ne p2, p3, :cond_2

    .line 32
    .line 33
    :cond_1
    int-to-long p2, p5

    .line 34
    const-string p4, "_el"

    .line 35
    .line 36
    invoke-virtual {v0, p4, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    :cond_2
    const-string p2, "_err"

    .line 40
    .line 41
    invoke-interface {p0, p1, p2, v0}, Lc4/H1;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static S(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p1

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    aget-object v2, p1, v1

    .line 10
    .line 11
    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v0
.end method

.method public static V(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lc4/E;->r0:Lc4/D;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "*"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, ","

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public static e0(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, [Landroid/os/Parcelable;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of p0, p0, Landroid/os/Bundle;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static h0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "_"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static i0(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x5f

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    const-string v1, "_ep"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public static j0(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    .line 13
    .line 14
    const-string v3, "com.google.android.gms.measurement.AppMeasurementReceiver"

    .line 15
    .line 16
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :catch_0
    :cond_1
    return v0
.end method

.method public static k0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    .line 10
    .line 11
    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :catch_0
    :cond_1
    return v0
.end method

.method public static l0(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lc4/I1;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const-string v0, "com.google.android.gms.measurement.AppMeasurementService"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lc4/I1;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static o0(Landroid/os/Parcelable;)[B
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static final p0(ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "_err"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v5, v1, v3

    .line 13
    .line 14
    if-nez v5, :cond_1

    .line 15
    .line 16
    int-to-long v1, p0

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static w(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-le v1, p0, :cond_2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->offsetByCodePoints(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "..."

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    return-object v0

    .line 38
    :cond_2
    return-object p1
.end method

.method public static x()Ljava/security/MessageDigest;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    :try_start_0
    const-string v1, "MD5"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    return-object v1

    .line 15
    :catch_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public static x0([B)J
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    array-length v0, p0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-static {v2}, Lcom/bumptech/glide/c;->k(Z)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    :goto_1
    if-ltz v0, :cond_1

    .line 19
    .line 20
    array-length v4, p0

    .line 21
    add-int/lit8 v4, v4, -0x8

    .line 22
    .line 23
    if-lt v0, v4, :cond_1

    .line 24
    .line 25
    aget-byte v4, p0, v0

    .line 26
    .line 27
    int-to-long v4, v4

    .line 28
    const-wide/16 v6, 0xff

    .line 29
    .line 30
    and-long/2addr v4, v6

    .line 31
    shl-long/2addr v4, v1

    .line 32
    add-long/2addr v2, v4

    .line 33
    add-int/lit8 v1, v1, 0x8

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-wide v2
.end method

.method public static z(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lc4/f;

    .line 34
    .line 35
    new-instance v2, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v3, v1, Lc4/f;->G:Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, "app_id"

    .line 43
    .line 44
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v1, Lc4/f;->H:Ljava/lang/String;

    .line 48
    .line 49
    const-string v4, "origin"

    .line 50
    .line 51
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-wide v3, v1, Lc4/f;->J:J

    .line 55
    .line 56
    const-string v5, "creation_timestamp"

    .line 57
    .line 58
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    iget-object v3, v1, Lc4/f;->I:Lc4/F1;

    .line 62
    .line 63
    iget-object v3, v3, Lc4/F1;->H:Ljava/lang/String;

    .line 64
    .line 65
    const-string v4, "name"

    .line 66
    .line 67
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v1, Lc4/f;->I:Lc4/F1;

    .line 71
    .line 72
    invoke-virtual {v3}, Lc4/F1;->i()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->K0(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-boolean v3, v1, Lc4/f;->K:Z

    .line 83
    .line 84
    const-string v4, "active"

    .line 85
    .line 86
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v1, Lc4/f;->L:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    const-string v4, "trigger_event_name"

    .line 94
    .line 95
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v3, v1, Lc4/f;->M:Lc4/u;

    .line 99
    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    const-string v4, "timed_out_event_name"

    .line 103
    .line 104
    iget-object v5, v3, Lc4/u;->G:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v3, Lc4/u;->H:Lc4/t;

    .line 110
    .line 111
    if-eqz v3, :cond_2

    .line 112
    .line 113
    invoke-virtual {v3}, Lc4/t;->i()Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v4, "timed_out_event_params"

    .line 118
    .line 119
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    iget-wide v3, v1, Lc4/f;->N:J

    .line 123
    .line 124
    const-string v5, "trigger_timeout"

    .line 125
    .line 126
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 127
    .line 128
    .line 129
    iget-object v3, v1, Lc4/f;->O:Lc4/u;

    .line 130
    .line 131
    if-eqz v3, :cond_3

    .line 132
    .line 133
    const-string v4, "triggered_event_name"

    .line 134
    .line 135
    iget-object v5, v3, Lc4/u;->G:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, v3, Lc4/u;->H:Lc4/t;

    .line 141
    .line 142
    if-eqz v3, :cond_3

    .line 143
    .line 144
    invoke-virtual {v3}, Lc4/t;->i()Landroid/os/Bundle;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const-string v4, "triggered_event_params"

    .line 149
    .line 150
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    iget-object v3, v1, Lc4/f;->I:Lc4/F1;

    .line 154
    .line 155
    iget-wide v3, v3, Lc4/F1;->I:J

    .line 156
    .line 157
    const-string v5, "triggered_timestamp"

    .line 158
    .line 159
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 160
    .line 161
    .line 162
    iget-wide v3, v1, Lc4/f;->P:J

    .line 163
    .line 164
    const-string v5, "time_to_live"

    .line 165
    .line 166
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v1, Lc4/f;->Q:Lc4/u;

    .line 170
    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    const-string v3, "expired_event_name"

    .line 174
    .line 175
    iget-object v4, v1, Lc4/u;->G:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v1, Lc4/u;->H:Lc4/t;

    .line 181
    .line 182
    if-eqz v1, :cond_4

    .line 183
    .line 184
    invoke-virtual {v1}, Lc4/t;->i()Landroid/os/Bundle;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v3, "expired_event_params"

    .line 189
    .line 190
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_5
    return-object v0
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;J)V
    .locals 6

    .line 1
    const-string v0, "_et"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lc4/l0;

    .line 16
    .line 17
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 18
    .line 19
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v3, v3, Lc4/T;->O:Lc4/Q;

    .line 27
    .line 28
    const-string v5, "Params already contained engagement"

    .line 29
    .line 30
    invoke-virtual {v3, v4, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-wide v1, v3

    .line 35
    :goto_0
    add-long/2addr p2, v1

    .line 36
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final A0(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0, v3, v2}, Lc4/I1;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Lc4/l0;

    .line 41
    .line 42
    iget-object v4, v3, Lc4/l0;->O:Lc4/T;

    .line 43
    .line 44
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v3, Lc4/l0;->S:Lc4/O;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "Param value can\'t be null"

    .line 54
    .line 55
    iget-object v4, v4, Lc4/T;->Q:Lc4/Q;

    .line 56
    .line 57
    invoke-virtual {v4, v2, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Lc4/I1;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-object v0
.end method

.method public final B(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p2, p1}, Lc4/I1;->p0(ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Lc4/l0;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/16 p2, 0x28

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {p2, p3, v0}, Lc4/I1;->w(ILjava/lang/String;Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string p3, "_ev"

    .line 22
    .line 23
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    instance-of p2, p4, Ljava/lang/String;

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    instance-of p2, p4, Ljava/lang/CharSequence;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const-string p3, "_el"

    .line 45
    .line 46
    int-to-long v0, p2

    .line 47
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final D(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Lc4/l0;

    .line 33
    .line 34
    iget-object v2, v2, Lc4/l0;->R:Lc4/I1;

    .line 35
    .line 36
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, p1, v1, v3}, Lc4/I1;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method public final E([Landroid/os/Parcelable;I)V
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_4

    .line 8
    .line 9
    aget-object v3, p1, v2

    .line 10
    .line 11
    check-cast v3, Landroid/os/Bundle;

    .line 12
    .line 13
    new-instance v4, Ljava/util/TreeSet;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_3

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v7}, Lc4/I1;->i0(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    sget-object v8, Lc4/y0;->h:[Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v7, v8}, Lc4/I1;->S(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-nez v8, :cond_0

    .line 53
    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    if-le v5, p2, :cond_0

    .line 57
    .line 58
    iget-object v8, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v8, Lc4/l0;

    .line 61
    .line 62
    iget-object v9, v8, Lc4/l0;->M:Lc4/h;

    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    sget-object v11, Lc4/E;->s1:Lc4/D;

    .line 66
    .line 67
    invoke-virtual {v9, v10, v11}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_1

    .line 72
    .line 73
    if-nez v6, :cond_2

    .line 74
    .line 75
    :cond_1
    iget-object v6, v8, Lc4/l0;->O:Lc4/T;

    .line 76
    .line 77
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 78
    .line 79
    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v10, "Param can\'t contain more than "

    .line 83
    .line 84
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v10, " item-scoped custom parameters"

    .line 91
    .line 92
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    iget-object v8, v8, Lc4/l0;->S:Lc4/O;

    .line 100
    .line 101
    invoke-virtual {v8, v7}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v8, v3}, Lc4/O;->b(Landroid/os/Bundle;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    iget-object v6, v6, Lc4/T;->N:Lc4/Q;

    .line 110
    .line 111
    invoke-virtual {v6, v10, v8, v9}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    const/16 v6, 0x1c

    .line 115
    .line 116
    invoke-static {v6, v3}, Lc4/I1;->p0(ILandroid/os/Bundle;)Z

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/4 v6, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    return-void
.end method

.method public final F(Lcom/google/android/gms/internal/ads/gg;I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v4}, Lc4/I1;->i0(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    if-le v2, p2, :cond_0

    .line 41
    .line 42
    iget-object v5, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Lc4/l0;

    .line 45
    .line 46
    iget-object v6, v5, Lc4/l0;->M:Lc4/h;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    sget-object v8, Lc4/E;->s1:Lc4/D;

    .line 50
    .line 51
    invoke-virtual {v6, v7, v8}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    :cond_1
    const-string v3, "Event can\'t contain more than "

    .line 60
    .line 61
    const-string v6, " params"

    .line 62
    .line 63
    invoke-static {v3, p2, v6}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v6, v5, Lc4/l0;->O:Lc4/T;

    .line 68
    .line 69
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 70
    .line 71
    .line 72
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v7, Ljava/lang/String;

    .line 75
    .line 76
    iget-object v5, v5, Lc4/l0;->S:Lc4/O;

    .line 77
    .line 78
    invoke-virtual {v5, v7}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v5, v1}, Lc4/O;->b(Landroid/os/Bundle;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget-object v6, v6, Lc4/T;->N:Lc4/Q;

    .line 87
    .line 88
    invoke-virtual {v6, v7, v5, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 v3, 0x5

    .line 92
    invoke-static {v3, v1}, Lc4/I1;->p0(ILandroid/os/Bundle;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    return-void
.end method

.method public final H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p3, Ljava/lang/Long;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p3, Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    instance-of v0, p3, Ljava/lang/Double;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    check-cast p3, Ljava/lang/Double;

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    instance-of v0, p3, [Landroid/os/Bundle;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    check-cast p3, [Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    if-eqz p2, :cond_6

    .line 55
    .line 56
    if-eqz p3, :cond_5

    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_5
    const/4 p1, 0x0

    .line 68
    :goto_0
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p3, Lc4/l0;

    .line 71
    .line 72
    iget-object v0, p3, Lc4/l0;->O:Lc4/T;

    .line 73
    .line 74
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 75
    .line 76
    .line 77
    iget-object p3, p3, Lc4/l0;->S:Lc4/O;

    .line 78
    .line 79
    invoke-virtual {p3, p2}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const-string p3, "Not putting event parameter. Invalid value type. name, type"

    .line 84
    .line 85
    iget-object v0, v0, Lc4/T;->Q:Lc4/Q;

    .line 86
    .line 87
    invoke-virtual {v0, p2, p1, p3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_6
    :goto_1
    return-void
.end method

.method public final I(Lcom/google/android/gms/internal/measurement/M;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "r"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lc4/l0;

    .line 19
    .line 20
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 21
    .line 22
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "Error returning boolean value to wrapper"

    .line 26
    .line 27
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final J(Lcom/google/android/gms/internal/measurement/M;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "r"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lc4/l0;

    .line 19
    .line 20
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 21
    .line 22
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "Error returning bundle list to wrapper"

    .line 26
    .line 27
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final K(Lcom/google/android/gms/internal/measurement/M;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lc4/l0;

    .line 9
    .line 10
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 11
    .line 12
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "Error returning bundle value to wrapper"

    .line 16
    .line 17
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 18
    .line 19
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final L(Lcom/google/android/gms/internal/measurement/M;[B)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "r"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lc4/l0;

    .line 19
    .line 20
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 21
    .line 22
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "Error returning byte array to wrapper"

    .line 26
    .line 27
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final M(Lcom/google/android/gms/internal/measurement/M;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "r"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lc4/l0;

    .line 19
    .line 20
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 21
    .line 22
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "Error returning int value to wrapper"

    .line 26
    .line 27
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final N(Lcom/google/android/gms/internal/measurement/M;J)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "r"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lc4/l0;

    .line 19
    .line 20
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 21
    .line 22
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    const-string p3, "Error returning long value to wrapper"

    .line 26
    .line 27
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 28
    .line 29
    invoke-virtual {p2, p1, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final O(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "r"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lc4/l0;

    .line 19
    .line 20
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 21
    .line 22
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "Error returning string value to wrapper"

    .line 26
    .line 27
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I
    .locals 12

    .line 1
    move-object v6, p0

    .line 2
    move-object v7, p2

    .line 3
    move-object v0, p3

    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lc4/I1;->e0(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "param"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    if-eqz p7, :cond_7

    .line 19
    .line 20
    sget-object v2, Lc4/y0;->g:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p2, v2}, Lc4/I1;->S(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const/16 v0, 0x14

    .line 29
    .line 30
    return v0

    .line 31
    :cond_0
    iget-object v2, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lc4/l0;

    .line 34
    .line 35
    invoke-virtual {v2}, Lc4/l0;->r()Lc4/d1;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lc4/z;->m()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lc4/B;->n()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lc4/d1;->A()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lc4/l0;

    .line 55
    .line 56
    iget-object v2, v2, Lc4/l0;->R:Lc4/I1;

    .line 57
    .line 58
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lc4/I1;->v0()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const v5, 0x310c4

    .line 66
    .line 67
    .line 68
    if-ge v2, v5, :cond_2

    .line 69
    .line 70
    const/16 v0, 0x19

    .line 71
    .line 72
    return v0

    .line 73
    :cond_2
    :goto_0
    iget-object v2, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Lc4/l0;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    instance-of v5, v0, [Landroid/os/Parcelable;

    .line 81
    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    move-object v8, v0

    .line 85
    check-cast v8, [Landroid/os/Parcelable;

    .line 86
    .line 87
    array-length v8, v8

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    instance-of v8, v0, Ljava/util/ArrayList;

    .line 90
    .line 91
    if-eqz v8, :cond_6

    .line 92
    .line 93
    move-object v8, v0

    .line 94
    check-cast v8, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    :goto_1
    const/16 v9, 0xc8

    .line 101
    .line 102
    if-le v8, v9, :cond_6

    .line 103
    .line 104
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 105
    .line 106
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    const-string v10, "Parameter array is too long; discarded. Value kind, name, array length"

    .line 114
    .line 115
    iget-object v2, v2, Lc4/T;->Q:Lc4/Q;

    .line 116
    .line 117
    invoke-virtual {v2, v3, p2, v8, v10}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/16 v2, 0x11

    .line 121
    .line 122
    if-eqz v5, :cond_5

    .line 123
    .line 124
    move-object v5, v0

    .line 125
    check-cast v5, [Landroid/os/Parcelable;

    .line 126
    .line 127
    array-length v8, v5

    .line 128
    if-le v8, v9, :cond_4

    .line 129
    .line 130
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, [Landroid/os/Parcelable;

    .line 135
    .line 136
    invoke-virtual {v1, p2, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    :goto_2
    const/16 v8, 0x11

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    instance-of v5, v0, Ljava/util/ArrayList;

    .line 143
    .line 144
    if-eqz v5, :cond_4

    .line 145
    .line 146
    move-object v5, v0

    .line 147
    check-cast v5, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-le v8, v9, :cond_4

    .line 154
    .line 155
    new-instance v8, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v5, v4, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, p2, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    const/4 v8, 0x0

    .line 169
    goto :goto_3

    .line 170
    :cond_7
    const/16 v0, 0x15

    .line 171
    .line 172
    return v0

    .line 173
    :goto_3
    invoke-static {p1}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    const/4 v2, 0x0

    .line 178
    if-nez v1, :cond_9

    .line 179
    .line 180
    invoke-static {p2}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_8
    iget-object v1, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v1, Lc4/l0;

    .line 190
    .line 191
    iget-object v1, v1, Lc4/l0;->M:Lc4/h;

    .line 192
    .line 193
    invoke-virtual {v1, v2, v4}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    goto :goto_5

    .line 198
    :cond_9
    :goto_4
    iget-object v1, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v1, Lc4/l0;

    .line 201
    .line 202
    iget-object v1, v1, Lc4/l0;->M:Lc4/h;

    .line 203
    .line 204
    invoke-virtual {v1, v2, v4}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    const/16 v2, 0x100

    .line 209
    .line 210
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    :goto_5
    invoke-virtual {p0, v3, p2, v1, p3}, Lc4/I1;->Z(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_a

    .line 219
    .line 220
    return v8

    .line 221
    :cond_a
    if-eqz p7, :cond_11

    .line 222
    .line 223
    instance-of v1, v0, Landroid/os/Bundle;

    .line 224
    .line 225
    if-eqz v1, :cond_b

    .line 226
    .line 227
    move-object v3, v0

    .line 228
    check-cast v3, Landroid/os/Bundle;

    .line 229
    .line 230
    move-object v0, p0

    .line 231
    move-object v1, p1

    .line 232
    move-object v2, p2

    .line 233
    move-object/from16 v4, p5

    .line 234
    .line 235
    move/from16 v5, p6

    .line 236
    .line 237
    invoke-virtual/range {v0 .. v5}, Lc4/I1;->U(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_9

    .line 241
    .line 242
    :cond_b
    instance-of v1, v0, [Landroid/os/Parcelable;

    .line 243
    .line 244
    if-eqz v1, :cond_d

    .line 245
    .line 246
    move-object v9, v0

    .line 247
    check-cast v9, [Landroid/os/Parcelable;

    .line 248
    .line 249
    array-length v10, v9

    .line 250
    const/4 v11, 0x0

    .line 251
    :goto_6
    if-ge v11, v10, :cond_10

    .line 252
    .line 253
    aget-object v0, v9, v11

    .line 254
    .line 255
    instance-of v1, v0, Landroid/os/Bundle;

    .line 256
    .line 257
    if-nez v1, :cond_c

    .line 258
    .line 259
    iget-object v1, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v1, Lc4/l0;

    .line 262
    .line 263
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 264
    .line 265
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const-string v2, "All Parcelable[] elements must be of type Bundle. Value type, name"

    .line 273
    .line 274
    iget-object v1, v1, Lc4/T;->Q:Lc4/Q;

    .line 275
    .line 276
    invoke-virtual {v1, v0, p2, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_c
    move-object v3, v0

    .line 281
    check-cast v3, Landroid/os/Bundle;

    .line 282
    .line 283
    move-object v0, p0

    .line 284
    move-object v1, p1

    .line 285
    move-object v2, p2

    .line 286
    move-object/from16 v4, p5

    .line 287
    .line 288
    move/from16 v5, p6

    .line 289
    .line 290
    invoke-virtual/range {v0 .. v5}, Lc4/I1;->U(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    .line 291
    .line 292
    .line 293
    add-int/lit8 v11, v11, 0x1

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_d
    instance-of v1, v0, Ljava/util/ArrayList;

    .line 297
    .line 298
    if-eqz v1, :cond_11

    .line 299
    .line 300
    move-object v9, v0

    .line 301
    check-cast v9, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    const/4 v11, 0x0

    .line 308
    :goto_7
    if-ge v11, v10, :cond_10

    .line 309
    .line 310
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    instance-of v1, v0, Landroid/os/Bundle;

    .line 315
    .line 316
    if-nez v1, :cond_f

    .line 317
    .line 318
    iget-object v1, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v1, Lc4/l0;

    .line 321
    .line 322
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 323
    .line 324
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 325
    .line 326
    .line 327
    if-eqz v0, :cond_e

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    goto :goto_8

    .line 334
    :cond_e
    const-string v0, "null"

    .line 335
    .line 336
    :goto_8
    const-string v2, "All ArrayList elements must be of type Bundle. Value type, name"

    .line 337
    .line 338
    iget-object v1, v1, Lc4/T;->Q:Lc4/Q;

    .line 339
    .line 340
    invoke-virtual {v1, v0, p2, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_f
    move-object v3, v0

    .line 345
    check-cast v3, Landroid/os/Bundle;

    .line 346
    .line 347
    move-object v0, p0

    .line 348
    move-object v1, p1

    .line 349
    move-object v2, p2

    .line 350
    move-object/from16 v4, p5

    .line 351
    .line 352
    move/from16 v5, p6

    .line 353
    .line 354
    invoke-virtual/range {v0 .. v5}, Lc4/I1;->U(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    .line 355
    .line 356
    .line 357
    add-int/lit8 v11, v11, 0x1

    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_10
    :goto_9
    return v8

    .line 361
    :cond_11
    :goto_a
    const/4 v0, 0x4

    .line 362
    return v0
.end method

.method public final Q(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "_ldl"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lc4/l0;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x800

    .line 17
    .line 18
    return p1

    .line 19
    :cond_0
    const-string v0, "_id"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lc4/l0;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/16 p1, 0x100

    .line 35
    .line 36
    return p1

    .line 37
    :cond_1
    const-string v0, "_lgclid"

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lc4/l0;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/16 p1, 0x64

    .line 53
    .line 54
    return p1

    .line 55
    :cond_2
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lc4/l0;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const/16 p1, 0x24

    .line 63
    .line 64
    return p1
.end method

.method public final R(ILjava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p2, Ljava/lang/Long;

    .line 6
    .line 7
    if-nez v1, :cond_e

    .line 8
    .line 9
    instance-of v1, p2, Ljava/lang/Double;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    int-to-long p1, p1

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_2
    instance-of v1, p2, Ljava/lang/Byte;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    check-cast p2, Ljava/lang/Byte;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-long p1, p1

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    check-cast p2, Ljava/lang/Short;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-long p1, p1

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    check-cast p2, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 p2, 0x1

    .line 74
    if-eq p2, p1, :cond_5

    .line 75
    .line 76
    const-wide/16 p1, 0x0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    const-wide/16 p1, 0x1

    .line 80
    .line 81
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    .line 87
    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    check-cast p2, Ljava/lang/Float;

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    .line 93
    .line 94
    .line 95
    move-result-wide p1

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_7
    instance-of v1, p2, Ljava/lang/String;

    .line 102
    .line 103
    if-nez v1, :cond_d

    .line 104
    .line 105
    instance-of v1, p2, Ljava/lang/Character;

    .line 106
    .line 107
    if-nez v1, :cond_d

    .line 108
    .line 109
    instance-of v1, p2, Ljava/lang/CharSequence;

    .line 110
    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    if-eqz p4, :cond_c

    .line 115
    .line 116
    instance-of p1, p2, [Landroid/os/Bundle;

    .line 117
    .line 118
    if-nez p1, :cond_9

    .line 119
    .line 120
    instance-of p1, p2, [Landroid/os/Parcelable;

    .line 121
    .line 122
    if-eqz p1, :cond_c

    .line 123
    .line 124
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    check-cast p2, [Landroid/os/Parcelable;

    .line 130
    .line 131
    array-length p3, p2

    .line 132
    const/4 p4, 0x0

    .line 133
    :goto_1
    if-ge p4, p3, :cond_b

    .line 134
    .line 135
    aget-object v0, p2, p4

    .line 136
    .line 137
    instance-of v1, v0, Landroid/os/Bundle;

    .line 138
    .line 139
    if-eqz v1, :cond_a

    .line 140
    .line 141
    check-cast v0, Landroid/os/Bundle;

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lc4/I1;->A0(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_a

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_a
    add-int/lit8 p4, p4, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    new-array p2, p2, [Landroid/os/Bundle;

    .line 164
    .line 165
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1

    .line 170
    :cond_c
    return-object v0

    .line 171
    :cond_d
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-static {p1, p2, p3}, Lc4/I1;->w(ILjava/lang/String;Z)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    return-object p1

    .line 180
    :cond_e
    :goto_3
    return-object p2
.end method

.method public final T()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v5, v1, v3

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    cmp-long v0, v1, v3

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lc4/l0;

    .line 30
    .line 31
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 32
    .line 33
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 34
    .line 35
    .line 36
    const-string v3, "Utils falling back to Random for random id"

    .line 37
    .line 38
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lc4/I1;->J:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final U(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .locals 21

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    if-nez v10, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    iget-object v0, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v12, v0

    .line 16
    check-cast v12, Lc4/l0;

    .line 17
    .line 18
    iget-object v0, v12, Lc4/l0;->M:Lc4/h;

    .line 19
    .line 20
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lc4/l0;

    .line 23
    .line 24
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 25
    .line 26
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 27
    .line 28
    .line 29
    const v13, 0xdc64e60

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v13}, Lc4/I1;->g0(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v14, 0x1

    .line 37
    if-eq v14, v0, :cond_1

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v0, 0x23

    .line 42
    .line 43
    const/16 v7, 0x23

    .line 44
    .line 45
    :goto_0
    new-instance v0, Ljava/util/TreeSet;

    .line 46
    .line 47
    invoke-virtual/range {p3 .. p3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v16

    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const/16 v18, 0x0

    .line 61
    .line 62
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_f

    .line 67
    .line 68
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v6, v0

    .line 73
    check-cast v6, Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v11, :cond_3

    .line 76
    .line 77
    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    goto :goto_4

    .line 86
    :cond_3
    :goto_2
    if-nez p5, :cond_4

    .line 87
    .line 88
    invoke-virtual {v8, v6}, Lc4/I1;->t0(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const/4 v0, 0x0

    .line 94
    :goto_3
    if-nez v0, :cond_5

    .line 95
    .line 96
    invoke-virtual {v8, v6}, Lc4/I1;->s0(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    :cond_5
    :goto_4
    const/4 v5, 0x0

    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    const/4 v1, 0x3

    .line 104
    if-ne v0, v1, :cond_6

    .line 105
    .line 106
    move-object v5, v6

    .line 107
    :cond_6
    invoke-virtual {v8, v10, v0, v6, v5}, Lc4/I1;->B(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move v14, v7

    .line 114
    goto/16 :goto_7

    .line 115
    .line 116
    :cond_7
    invoke-virtual {v10, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lc4/I1;->e0(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iget-object v4, v12, Lc4/l0;->O:Lc4/T;

    .line 125
    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name"

    .line 132
    .line 133
    iget-object v1, v4, Lc4/T;->Q:Lc4/Q;

    .line 134
    .line 135
    move-object/from16 v3, p2

    .line 136
    .line 137
    invoke-virtual {v1, v9, v3, v6, v0}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/16 v0, 0x16

    .line 141
    .line 142
    move-object/from16 v19, v4

    .line 143
    .line 144
    move-object v15, v6

    .line 145
    move v14, v7

    .line 146
    goto :goto_5

    .line 147
    :cond_8
    move-object/from16 v3, p2

    .line 148
    .line 149
    invoke-virtual {v10, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v19

    .line 153
    const/16 v20, 0x0

    .line 154
    .line 155
    move-object/from16 v0, p0

    .line 156
    .line 157
    move-object/from16 v1, p1

    .line 158
    .line 159
    move-object v2, v6

    .line 160
    move-object/from16 v3, v19

    .line 161
    .line 162
    move-object/from16 v19, v4

    .line 163
    .line 164
    move-object/from16 v4, p3

    .line 165
    .line 166
    move-object v14, v5

    .line 167
    move-object/from16 v5, p4

    .line 168
    .line 169
    move-object v15, v6

    .line 170
    move/from16 v6, p5

    .line 171
    .line 172
    move v14, v7

    .line 173
    move/from16 v7, v20

    .line 174
    .line 175
    invoke-virtual/range {v0 .. v7}, Lc4/I1;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    :goto_5
    if-eqz v0, :cond_9

    .line 180
    .line 181
    const-string v1, "_ev"

    .line 182
    .line 183
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_9

    .line 188
    .line 189
    invoke-virtual {v10, v15}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v8, v10, v0, v15, v1}, Lc4/I1;->B(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_7

    .line 200
    .line 201
    :cond_9
    invoke-static {v15}, Lc4/I1;->i0(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_e

    .line 206
    .line 207
    sget-object v0, Lc4/y0;->h:[Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v15, v0}, Lc4/I1;->S(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_e

    .line 214
    .line 215
    add-int/lit8 v0, v17, 0x1

    .line 216
    .line 217
    invoke-virtual {v8, v13}, Lc4/I1;->g0(I)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    iget-object v2, v12, Lc4/l0;->S:Lc4/O;

    .line 222
    .line 223
    if-nez v1, :cond_a

    .line 224
    .line 225
    invoke-static/range {v19 .. v19}, Lc4/l0;->k(Lc4/s0;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v9}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v2, v10}, Lc4/O;->b(Landroid/os/Bundle;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    const-string v3, "Item array not supported on client\'s version of Google Play Services (Android Only)"

    .line 237
    .line 238
    move-object/from16 v4, v19

    .line 239
    .line 240
    iget-object v4, v4, Lc4/T;->N:Lc4/Q;

    .line 241
    .line 242
    invoke-virtual {v4, v1, v2, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const/16 v1, 0x17

    .line 246
    .line 247
    invoke-static {v1, v10}, Lc4/I1;->p0(ILandroid/os/Bundle;)Z

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_a
    move-object/from16 v4, v19

    .line 255
    .line 256
    if-le v0, v14, :cond_d

    .line 257
    .line 258
    sget-object v1, Lc4/E;->s1:Lc4/D;

    .line 259
    .line 260
    iget-object v3, v12, Lc4/l0;->M:Lc4/h;

    .line 261
    .line 262
    const/4 v5, 0x0

    .line 263
    invoke-virtual {v3, v5, v1}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_b

    .line 268
    .line 269
    if-nez v18, :cond_c

    .line 270
    .line 271
    :cond_b
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 272
    .line 273
    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v3, "Item can\'t contain more than "

    .line 277
    .line 278
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v3, " item-scoped custom params"

    .line 285
    .line 286
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v2, v9}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v2, v10}, Lc4/O;->b(Landroid/os/Bundle;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iget-object v4, v4, Lc4/T;->N:Lc4/Q;

    .line 302
    .line 303
    invoke-virtual {v4, v3, v2, v1}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_c
    const/16 v1, 0x1c

    .line 307
    .line 308
    invoke-static {v1, v10}, Lc4/I1;->p0(ILandroid/os/Bundle;)Z

    .line 309
    .line 310
    .line 311
    invoke-virtual {v10, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    move/from16 v17, v0

    .line 315
    .line 316
    move v7, v14

    .line 317
    const/4 v14, 0x1

    .line 318
    const/16 v18, 0x1

    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :cond_d
    :goto_6
    move/from16 v17, v0

    .line 323
    .line 324
    :cond_e
    :goto_7
    move v7, v14

    .line 325
    const/4 v14, 0x1

    .line 326
    goto/16 :goto_1

    .line 327
    .line 328
    :cond_f
    :goto_8
    return-void
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v1, v0, Lc4/l0;->M:Lc4/h;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    sget-object v3, Lc4/E;->q1:Lc4/D;

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v4, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lc4/I1;->n0(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p2, Lc4/l0;

    .line 39
    .line 40
    iget-object p2, p2, Lc4/l0;->H:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_0

    .line 47
    .line 48
    :goto_0
    const/4 v3, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p2, v0, Lc4/T;->N:Lc4/Q;

    .line 58
    .line 59
    invoke-virtual {p2, p1, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v5

    .line 63
    :cond_1
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lc4/l0;

    .line 66
    .line 67
    iget-object p1, p1, Lc4/l0;->H:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :goto_1
    return v3

    .line 77
    :cond_3
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v0, Lc4/T;->N:Lc4/Q;

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v5

    .line 86
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lc4/I1;->n0(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_7

    .line 97
    .line 98
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p2, Lc4/l0;

    .line 101
    .line 102
    iget-object p2, p2, Lc4/l0;->H:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p2, v0, Lc4/T;->N:Lc4/Q;

    .line 118
    .line 119
    invoke-virtual {p2, p1, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    return v5

    .line 123
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_8

    .line 128
    .line 129
    invoke-virtual {p0, p2}, Lc4/I1;->n0(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_7

    .line 134
    .line 135
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string p2, "Invalid admob_app_id. Analytics disabled."

    .line 143
    .line 144
    iget-object v0, v0, Lc4/T;->N:Lc4/Q;

    .line 145
    .line 146
    invoke-virtual {v0, p1, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return v5

    .line 150
    :cond_7
    return v3

    .line 151
    :cond_8
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p1, Lc4/l0;

    .line 154
    .line 155
    iget-object p1, p1, Lc4/l0;->H:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_9

    .line 162
    .line 163
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, v0, Lc4/T;->N:Lc4/Q;

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_9
    return v5
.end method

.method public final X(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lc4/l0;

    .line 7
    .line 8
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 9
    .line 10
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 11
    .line 12
    .line 13
    const-string p3, "Name is required and can\'t be null. Type"

    .line 14
    .line 15
    iget-object p1, p1, Lc4/T;->N:Lc4/Q;

    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-le v1, p1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lc4/l0;

    .line 34
    .line 35
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 36
    .line 37
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v2, "Name is too long. Type, maximum supported length, name"

    .line 45
    .line 46
    iget-object v1, v1, Lc4/T;->N:Lc4/Q;

    .line 47
    .line 48
    invoke-virtual {v1, p2, p1, p3, v2}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v0

    .line 52
    :cond_1
    const/4 p1, 0x1

    .line 53
    return p1
.end method

.method public final Y(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p2, Lc4/l0;

    .line 7
    .line 8
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 9
    .line 10
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 11
    .line 12
    .line 13
    const-string p3, "Name is required and can\'t be null. Type"

    .line 14
    .line 15
    iget-object p2, p2, Lc4/T;->N:Lc4/Q;

    .line 16
    .line 17
    invoke-virtual {p2, p1, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    sget-object v1, Lc4/I1;->O:[Ljava/lang/String;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    const/4 v3, 0x3

    .line 25
    if-ge v2, v3, :cond_2

    .line 26
    .line 27
    aget-object v3, v1, v2

    .line 28
    .line 29
    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p2, Lc4/l0;

    .line 38
    .line 39
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 40
    .line 41
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 42
    .line 43
    .line 44
    const-string p3, "Name starts with reserved prefix. Type, name"

    .line 45
    .line 46
    iget-object p2, p2, Lc4/T;->N:Lc4/Q;

    .line 47
    .line 48
    invoke-virtual {p2, p1, p4, p3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v0

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-eqz p2, :cond_4

    .line 56
    .line 57
    invoke-static {p4, p2}, Lc4/I1;->S(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    if-eqz p3, :cond_3

    .line 64
    .line 65
    invoke-static {p4, p3}, Lc4/I1;->S(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_4

    .line 70
    .line 71
    :cond_3
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p2, Lc4/l0;

    .line 74
    .line 75
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 76
    .line 77
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 78
    .line 79
    .line 80
    const-string p3, "Name is reserved. Type, name"

    .line 81
    .line 82
    iget-object p2, p2, Lc4/T;->N:Lc4/Q;

    .line 83
    .line 84
    invoke-virtual {p2, p1, p4, p3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v0

    .line 88
    :cond_4
    const/4 p1, 0x1

    .line 89
    return p1
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p4, Ljava/lang/Long;

    .line 6
    .line 7
    if-nez v1, :cond_4

    .line 8
    .line 9
    instance-of v1, p4, Ljava/lang/Float;

    .line 10
    .line 11
    if-nez v1, :cond_4

    .line 12
    .line 13
    instance-of v1, p4, Ljava/lang/Integer;

    .line 14
    .line 15
    if-nez v1, :cond_4

    .line 16
    .line 17
    instance-of v1, p4, Ljava/lang/Byte;

    .line 18
    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    instance-of v1, p4, Ljava/lang/Short;

    .line 22
    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    instance-of v1, p4, Ljava/lang/Boolean;

    .line 26
    .line 27
    if-nez v1, :cond_4

    .line 28
    .line 29
    instance-of v1, p4, Ljava/lang/Double;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    instance-of v1, p4, Ljava/lang/String;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    instance-of v1, p4, Ljava/lang/Character;

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    instance-of v1, p4, Ljava/lang/CharSequence;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-le v1, p3, :cond_4

    .line 62
    .line 63
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p3, Lc4/l0;

    .line 66
    .line 67
    iget-object p3, p3, Lc4/l0;->O:Lc4/T;

    .line 68
    .line 69
    invoke-static {p3}, Lc4/l0;->k(Lc4/s0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    const-string v0, "Value is too long; discarded. Value kind, name, value length"

    .line 81
    .line 82
    iget-object p3, p3, Lc4/T;->Q:Lc4/Q;

    .line 83
    .line 84
    invoke-virtual {p3, p1, p2, p4, v0}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :cond_4
    :goto_1
    return v0
.end method

.method public final a0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p2, Lc4/l0;

    .line 7
    .line 8
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 9
    .line 10
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "Name is required and can\'t be null. Type"

    .line 14
    .line 15
    iget-object p2, p2, Lc4/T;->N:Lc4/Q;

    .line 16
    .line 17
    invoke-virtual {p2, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p2, Lc4/l0;

    .line 30
    .line 31
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 32
    .line 33
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "Name is required and can\'t be empty. Type"

    .line 37
    .line 38
    iget-object p2, p2, Lc4/T;->N:Lc4/Q;

    .line 39
    .line 40
    invoke-virtual {p2, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/16 v3, 0x5f

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    if-ne v1, v3, :cond_2

    .line 57
    .line 58
    const/16 v1, 0x5f

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lc4/l0;

    .line 64
    .line 65
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 66
    .line 67
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    .line 71
    .line 72
    iget-object v1, v1, Lc4/T;->N:Lc4/Q;

    .line 73
    .line 74
    invoke-virtual {v1, p1, p2, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v0

    .line 78
    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_1
    if-ge v1, v2, :cond_6

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eq v4, v3, :cond_5

    .line 93
    .line 94
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Lc4/l0;

    .line 104
    .line 105
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 106
    .line 107
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 108
    .line 109
    .line 110
    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 111
    .line 112
    iget-object v1, v1, Lc4/T;->N:Lc4/Q;

    .line 113
    .line 114
    invoke-virtual {v1, p1, p2, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return v0

    .line 118
    :cond_5
    :goto_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    add-int/2addr v1, v4

    .line 123
    goto :goto_1

    .line 124
    :cond_6
    const/4 p1, 0x1

    .line 125
    return p1
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p2, Lc4/l0;

    .line 7
    .line 8
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 9
    .line 10
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "Name is required and can\'t be null. Type"

    .line 14
    .line 15
    iget-object p2, p2, Lc4/T;->N:Lc4/Q;

    .line 16
    .line 17
    invoke-virtual {p2, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p2, Lc4/l0;

    .line 30
    .line 31
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 32
    .line 33
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "Name is required and can\'t be empty. Type"

    .line 37
    .line 38
    iget-object p2, p2, Lc4/T;->N:Lc4/Q;

    .line 39
    .line 40
    invoke-virtual {p2, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lc4/l0;

    .line 57
    .line 58
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 59
    .line 60
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "Name must start with a letter. Type, name"

    .line 64
    .line 65
    iget-object v1, v1, Lc4/T;->N:Lc4/Q;

    .line 66
    .line 67
    invoke-virtual {v1, p1, p2, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    :goto_0
    if-ge v1, v2, :cond_5

    .line 80
    .line 81
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/16 v4, 0x5f

    .line 86
    .line 87
    if-eq v3, v4, :cond_4

    .line 88
    .line 89
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v1, Lc4/l0;

    .line 99
    .line 100
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 101
    .line 102
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 106
    .line 107
    iget-object v1, v1, Lc4/T;->N:Lc4/Q;

    .line 108
    .line 109
    invoke-virtual {v1, p1, p2, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return v0

    .line 113
    :cond_4
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    add-int/2addr v1, v3

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    const/4 p1, 0x1

    .line 120
    return p1
.end method

.method public final c0(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    iget-object v1, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/U1;->G:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_0
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 25
    .line 26
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "Permission not granted"

    .line 30
    .line 31
    iget-object v0, v0, Lc4/T;->S:Lc4/Q;

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public final d0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, Lc4/l0;

    .line 20
    .line 21
    iget-object p2, p2, Lc4/l0;->M:Lc4/h;

    .line 22
    .line 23
    const-string v0, "debug.firebase.analytics.app"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lc4/h;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final f0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    .line 2
    .line 3
    const-string v1, "CN=Android Debug,O=Android,C=US"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {p1}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/16 v1, 0x40

    .line 13
    .line 14
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/measurement/U1;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    array-length p2, p1

    .line 25
    if-lez p2, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    aget-object p1, p1, p2

    .line 29
    .line 30
    const-string p2, "X.509"

    .line 31
    .line 32
    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return p1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :goto_0
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p2, Lc4/l0;

    .line 67
    .line 68
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 69
    .line 70
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 71
    .line 72
    .line 73
    const-string v0, "Package name not found"

    .line 74
    .line 75
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 76
    .line 77
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :goto_1
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p2, Lc4/l0;

    .line 84
    .line 85
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 86
    .line 87
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "Error obtaining certificate"

    .line 91
    .line 92
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 93
    .line 94
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    :goto_2
    const/4 p1, 0x1

    .line 98
    return p1
.end method

.method public final g0(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lc4/d1;->K:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0}, Lc4/I1;->v0()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    div-int/lit16 p1, p1, 0x3e8

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-ge v1, p1, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return p1

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :cond_2
    :goto_0
    return v2
.end method

.method public final m0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    sget-object v2, Lc4/E;->q1:Lc4/D;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    if-nez p4, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    return v1

    .line 42
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    return v1

    .line 64
    :cond_2
    return v2

    .line 65
    :cond_3
    if-eqz v0, :cond_7

    .line 66
    .line 67
    if-eqz v3, :cond_7

    .line 68
    .line 69
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    return v1

    .line 88
    :cond_4
    return v2

    .line 89
    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    return v1

    .line 96
    :cond_6
    return v2

    .line 97
    :cond_7
    if-nez v0, :cond_b

    .line 98
    .line 99
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_8

    .line 104
    .line 105
    return v2

    .line 106
    :cond_8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_a

    .line 111
    .line 112
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_9

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_9
    return v2

    .line 120
    :cond_a
    :goto_1
    return v1

    .line 121
    :cond_b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_d

    .line 126
    .line 127
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_c

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_c
    return v2

    .line 135
    :cond_d
    :goto_2
    return v1
.end method

.method public final n()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final n0(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    sget-object v2, Lc4/E;->q1:Lc4/D;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v1, v0, :cond_0

    .line 19
    .line 20
    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "^1:\\d+:android:[a-f0-9]+$"

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public final q(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move-object/from16 v11, p3

    .line 8
    .line 9
    sget-object v0, Lc4/y0;->d:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v9, v0}, Lc4/I1;->S(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v12

    .line 15
    if-eqz v10, :cond_f

    .line 16
    .line 17
    new-instance v14, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v14, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v8, Lc1/d;->G:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v15, v0

    .line 25
    check-cast v15, Lc4/l0;

    .line 26
    .line 27
    iget-object v0, v15, Lc4/l0;->M:Lc4/h;

    .line 28
    .line 29
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lc4/l0;

    .line 32
    .line 33
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 34
    .line 35
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 36
    .line 37
    .line 38
    const v1, 0xc02a560

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lc4/I1;->g0(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const/16 v0, 0x64

    .line 48
    .line 49
    const/16 v7, 0x64

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/16 v0, 0x19

    .line 53
    .line 54
    const/16 v7, 0x19

    .line 55
    .line 56
    :goto_0
    new-instance v0, Ljava/util/TreeSet;

    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v16

    .line 69
    const/16 v17, 0x0

    .line 70
    .line 71
    const/16 v18, 0x0

    .line 72
    .line 73
    const/16 v19, 0x0

    .line 74
    .line 75
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_e

    .line 80
    .line 81
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v6, v0

    .line 86
    check-cast v6, Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v11, :cond_2

    .line 89
    .line 90
    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    goto :goto_4

    .line 99
    :cond_2
    :goto_2
    if-nez p4, :cond_3

    .line 100
    .line 101
    invoke-virtual {v8, v6}, Lc4/I1;->t0(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    const/4 v0, 0x0

    .line 107
    :goto_3
    if-nez v0, :cond_4

    .line 108
    .line 109
    invoke-virtual {v8, v6}, Lc4/I1;->s0(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    :cond_4
    :goto_4
    if-eqz v0, :cond_7

    .line 114
    .line 115
    const/4 v1, 0x3

    .line 116
    if-ne v0, v1, :cond_5

    .line 117
    .line 118
    move-object v1, v6

    .line 119
    goto :goto_5

    .line 120
    :cond_5
    const/4 v1, 0x0

    .line 121
    :goto_5
    invoke-virtual {v8, v14, v0, v6, v1}, Lc4/I1;->B(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v14, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move v11, v7

    .line 128
    :cond_6
    :goto_6
    const/4 v3, 0x0

    .line 129
    goto/16 :goto_9

    .line 130
    .line 131
    :cond_7
    invoke-virtual {v10, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    move-object/from16 v0, p0

    .line 136
    .line 137
    move-object/from16 v1, p1

    .line 138
    .line 139
    move-object v2, v6

    .line 140
    move-object v4, v14

    .line 141
    move-object/from16 v5, p3

    .line 142
    .line 143
    move-object v13, v6

    .line 144
    move/from16 v6, p4

    .line 145
    .line 146
    move v11, v7

    .line 147
    move v7, v12

    .line 148
    invoke-virtual/range {v0 .. v7}, Lc4/I1;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const/16 v1, 0x11

    .line 153
    .line 154
    if-ne v0, v1, :cond_8

    .line 155
    .line 156
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v8, v14, v1, v13, v0}, Lc4/I1;->B(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_8
    if-eqz v0, :cond_a

    .line 163
    .line 164
    const-string v1, "_ev"

    .line 165
    .line 166
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_a

    .line 171
    .line 172
    const/16 v1, 0x15

    .line 173
    .line 174
    if-ne v0, v1, :cond_9

    .line 175
    .line 176
    move-object v6, v9

    .line 177
    goto :goto_7

    .line 178
    :cond_9
    move-object v6, v13

    .line 179
    :goto_7
    invoke-virtual {v10, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v8, v14, v0, v6, v1}, Lc4/I1;->B(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v14, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_a
    :goto_8
    invoke-static {v13}, Lc4/I1;->i0(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_6

    .line 195
    .line 196
    add-int/lit8 v0, v18, 0x1

    .line 197
    .line 198
    if-le v0, v11, :cond_d

    .line 199
    .line 200
    sget-object v1, Lc4/E;->s1:Lc4/D;

    .line 201
    .line 202
    iget-object v2, v15, Lc4/l0;->M:Lc4/h;

    .line 203
    .line 204
    const/4 v3, 0x0

    .line 205
    invoke-virtual {v2, v3, v1}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_b

    .line 210
    .line 211
    if-nez v19, :cond_c

    .line 212
    .line 213
    :cond_b
    const-string v1, "Event can\'t contain more than "

    .line 214
    .line 215
    const-string v2, " params"

    .line 216
    .line 217
    invoke-static {v1, v11, v2}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-object v2, v15, Lc4/l0;->O:Lc4/T;

    .line 222
    .line 223
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 224
    .line 225
    .line 226
    iget-object v4, v15, Lc4/l0;->S:Lc4/O;

    .line 227
    .line 228
    invoke-virtual {v4, v9}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v4, v10}, Lc4/O;->b(Landroid/os/Bundle;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    iget-object v2, v2, Lc4/T;->N:Lc4/Q;

    .line 237
    .line 238
    invoke-virtual {v2, v5, v4, v1}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :cond_c
    const/4 v1, 0x5

    .line 242
    invoke-static {v1, v14}, Lc4/I1;->p0(ILandroid/os/Bundle;)Z

    .line 243
    .line 244
    .line 245
    invoke-virtual {v14, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const/16 v19, 0x1

    .line 249
    .line 250
    :cond_d
    move/from16 v18, v0

    .line 251
    .line 252
    :goto_9
    move v7, v11

    .line 253
    move-object/from16 v11, p3

    .line 254
    .line 255
    goto/16 :goto_1

    .line 256
    .line 257
    :cond_e
    move-object v13, v14

    .line 258
    goto :goto_a

    .line 259
    :cond_f
    const/4 v3, 0x0

    .line 260
    move-object v13, v3

    .line 261
    :goto_a
    return-object v13
.end method

.method public final q0(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "_ldl"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lc4/I1;->Q(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "user property referrer"

    .line 14
    .line 15
    invoke-virtual {p0, v1, p2, v0, p1}, Lc4/I1;->Z(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p2}, Lc4/I1;->Q(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v1, "user property"

    .line 25
    .line 26
    invoke-virtual {p0, v1, p2, v0, p1}, Lc4/I1;->Z(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :cond_1
    const/4 p1, 0x7

    .line 35
    return p1
.end method

.method public final r(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lc4/u;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lc4/I1;->r0(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    const-string p2, "_o"

    .line 29
    .line 30
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, p1, v0, p2, v1}, Lc4/I1;->q(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p6, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lc4/I1;->A0(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    :cond_2
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance p6, Lc4/u;

    .line 52
    .line 53
    new-instance v2, Lc4/t;

    .line 54
    .line 55
    invoke-direct {v2, p2}, Lc4/t;-><init>(Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    move-object v0, p6

    .line 59
    move-object v1, p1

    .line 60
    move-object v3, p3

    .line 61
    move-wide v4, p4

    .line 62
    invoke-direct/range {v0 .. v5}, Lc4/u;-><init>(Ljava/lang/String;Lc4/t;Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    return-object p6

    .line 66
    :cond_3
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p2, Lc4/l0;

    .line 69
    .line 70
    iget-object p3, p2, Lc4/l0;->O:Lc4/T;

    .line 71
    .line 72
    invoke-static {p3}, Lc4/l0;->k(Lc4/s0;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p2, Lc4/l0;->S:Lc4/O;

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string p2, "Invalid conditional property event name"

    .line 82
    .line 83
    iget-object p3, p3, Lc4/T;->L:Lc4/Q;

    .line 84
    .line 85
    invoke-virtual {p3, p1, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final r0(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lc4/I1;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    sget-object v1, Lc4/y0;->a:[Ljava/lang/String;

    .line 12
    .line 13
    sget-object v3, Lc4/y0;->b:[Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1, v3, p1}, Lc4/I1;->Y(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const/16 p1, 0xd

    .line 22
    .line 23
    return p1

    .line 24
    :cond_1
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lc4/l0;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x28

    .line 32
    .line 33
    invoke-virtual {p0, v1, v0, p1}, Lc4/I1;->X(ILjava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public final s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "_ev"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x100

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Lc4/l0;

    .line 17
    .line 18
    iget-object p2, p2, Lc4/l0;->M:Lc4/h;

    .line 19
    .line 20
    invoke-virtual {p2, v4, v3}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p0, p2, p1, v2, v2}, Lc4/I1;->R(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    invoke-static {p2}, Lc4/I1;->h0(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p2, Lc4/l0;

    .line 42
    .line 43
    iget-object p2, p2, Lc4/l0;->M:Lc4/h;

    .line 44
    .line 45
    invoke-virtual {p2, v4, v3}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Lc4/l0;

    .line 57
    .line 58
    iget-object p2, p2, Lc4/l0;->M:Lc4/h;

    .line 59
    .line 60
    invoke-virtual {p2, v4, v3}, Lc4/h;->s(Ljava/lang/String;Z)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    :goto_0
    invoke-virtual {p0, p2, p1, v3, v2}, Lc4/I1;->R(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final s0(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "event param"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lc4/I1;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x3

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v1, p1}, Lc4/I1;->Y(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/16 p1, 0xe

    .line 19
    .line 20
    return p1

    .line 21
    :cond_1
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lc4/l0;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x28

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0, p1}, Lc4/I1;->X(ILjava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public final t(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "_ldl"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lc4/I1;->Q(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, p2, p1, v0, v1}, Lc4/I1;->R(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p0, p2}, Lc4/I1;->Q(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0, p2, p1, v1, v1}, Lc4/I1;->R(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final t0(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "event param"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lc4/I1;->b0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x3

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v1, p1}, Lc4/I1;->Y(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/16 p1, 0xe

    .line 19
    .line 20
    return p1

    .line 21
    :cond_1
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lc4/l0;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x28

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0, p1}, Lc4/I1;->X(ILjava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public final u()Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-virtual {p0}, Lc4/I1;->y()Ljava/security/SecureRandom;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 13
    .line 14
    new-instance v2, Ljava/math/BigInteger;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 18
    .line 19
    .line 20
    new-array v0, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v0, v3

    .line 24
    .line 25
    const-string v2, "%032x"

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final u0(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "user property"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lc4/I1;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x6

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    sget-object v1, Lc4/y0;->i:[Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v0, v1, v3, p1}, Lc4/I1;->Y(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const/16 p1, 0xf

    .line 21
    .line 22
    return p1

    .line 23
    :cond_1
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lc4/l0;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x18

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0, p1}, Lc4/I1;->X(ILjava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public final v0()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/I1;->N:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lc4/l0;

    .line 8
    .line 9
    sget-object v1, LJ3/f;->b:LJ3/f;

    .line 10
    .line 11
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, LJ3/f;->a(Landroid/content/Context;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    div-int/lit16 v0, v0, 0x3e8

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lc4/I1;->N:Ljava/lang/Integer;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lc4/I1;->N:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public final w0()J
    .locals 10

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lc4/L;->t()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lc4/I1;->V(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-wide v1

    .line 25
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/16 v4, 0x1e

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    if-ge v0, v4, :cond_1

    .line 32
    .line 33
    const-wide/16 v6, 0x4

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-static {}, Lb7/Z;->a()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x4

    .line 41
    if-ge v6, v7, :cond_2

    .line 42
    .line 43
    const-wide/16 v6, 0x8

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v6, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Lc4/l0;

    .line 49
    .line 50
    if-lt v0, v4, :cond_3

    .line 51
    .line 52
    invoke-static {}, Lb7/Z;->a()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v4, 0x3

    .line 57
    if-le v0, v4, :cond_3

    .line 58
    .line 59
    invoke-static {}, LE1/a;->v()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-object v4, Lc4/E;->l0:Lc4/D;

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-ge v0, v4, :cond_4

    .line 81
    .line 82
    const-wide/16 v6, 0x10

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move-wide v6, v1

    .line 86
    :goto_1
    const-string v0, "android.permission.ACCESS_ADSERVICES_ATTRIBUTION"

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lc4/I1;->c0(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    const-wide/16 v8, 0x2

    .line 95
    .line 96
    or-long/2addr v6, v8

    .line 97
    :cond_5
    cmp-long v0, v6, v1

    .line 98
    .line 99
    if-nez v0, :cond_a

    .line 100
    .line 101
    iget-object v0, p0, Lc4/I1;->M:Ljava/lang/Boolean;

    .line 102
    .line 103
    if-nez v0, :cond_9

    .line 104
    .line 105
    iget-object v0, p0, Lc4/I1;->L:LI1/d;

    .line 106
    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Lc4/l0;

    .line 112
    .line 113
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {v0}, LI1/d;->b(Landroid/content/Context;)LI1/d;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lc4/I1;->L:LI1/d;

    .line 120
    .line 121
    :cond_6
    iget-object v0, p0, Lc4/I1;->L:LI1/d;

    .line 122
    .line 123
    if-nez v0, :cond_7

    .line 124
    .line 125
    goto/16 :goto_7

    .line 126
    .line 127
    :cond_7
    invoke-virtual {v0}, LI1/d;->c()LD4/b;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    .line 133
    const-wide/16 v8, 0x2710

    .line 134
    .line 135
    invoke-interface {v0, v8, v9, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4

    .line 140
    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    const/4 v5, 0x1

    .line 148
    if-ne v4, v5, :cond_8

    .line 149
    .line 150
    const/4 v3, 0x1

    .line 151
    goto :goto_2

    .line 152
    :catch_0
    move-exception v3

    .line 153
    goto :goto_3

    .line 154
    :catch_1
    move-exception v3

    .line 155
    goto :goto_3

    .line 156
    :catch_2
    move-exception v3

    .line 157
    goto :goto_3

    .line 158
    :catch_3
    move-exception v3

    .line 159
    goto :goto_3

    .line 160
    :cond_8
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iput-object v3, p0, Lc4/I1;->M:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :goto_3
    move-object v5, v0

    .line 168
    goto :goto_5

    .line 169
    :catch_4
    move-exception v0

    .line 170
    :goto_4
    move-object v3, v0

    .line 171
    goto :goto_5

    .line 172
    :catch_5
    move-exception v0

    .line 173
    goto :goto_4

    .line 174
    :catch_6
    move-exception v0

    .line 175
    goto :goto_4

    .line 176
    :catch_7
    move-exception v0

    .line 177
    goto :goto_4

    .line 178
    :goto_5
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Lc4/l0;

    .line 181
    .line 182
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 183
    .line 184
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 185
    .line 186
    .line 187
    const-string v4, "Measurement manager api exception"

    .line 188
    .line 189
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 190
    .line 191
    invoke-virtual {v0, v3, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 195
    .line 196
    iput-object v0, p0, Lc4/I1;->M:Ljava/lang/Boolean;

    .line 197
    .line 198
    move-object v0, v5

    .line 199
    :goto_6
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v3, Lc4/l0;

    .line 202
    .line 203
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 204
    .line 205
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 206
    .line 207
    .line 208
    const-string v4, "Measurement manager api status result"

    .line 209
    .line 210
    iget-object v3, v3, Lc4/T;->T:Lc4/Q;

    .line 211
    .line 212
    invoke-virtual {v3, v0, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_9
    iget-object v0, p0, Lc4/I1;->M:Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_a

    .line 222
    .line 223
    :goto_7
    const-wide/16 v6, 0x40

    .line 224
    .line 225
    :cond_a
    cmp-long v0, v6, v1

    .line 226
    .line 227
    if-nez v0, :cond_b

    .line 228
    .line 229
    const-wide/16 v0, 0x1

    .line 230
    .line 231
    return-wide v0

    .line 232
    :cond_b
    return-wide v6
.end method

.method public final y()Ljava/security/SecureRandom;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc4/I1;->I:Ljava/security/SecureRandom;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/security/SecureRandom;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lc4/I1;->I:Ljava/security/SecureRandom;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lc4/I1;->I:Ljava/security/SecureRandom;

    .line 16
    .line 17
    return-object v0
.end method

.method public final y0()J
    .locals 6

    .line 1
    iget-object v0, p0, Lc4/I1;->J:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    new-instance v1, Ljava/util/Random;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-object v4, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Lc4/l0;

    .line 23
    .line 24
    iget-object v4, v4, Lc4/l0;->T:LP3/b;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    xor-long/2addr v2, v4

    .line 34
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    iget v3, p0, Lc4/I1;->K:I

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    iput v3, p0, Lc4/I1;->K:I

    .line 46
    .line 47
    int-to-long v3, v3

    .line 48
    add-long/2addr v1, v3

    .line 49
    monitor-exit v0

    .line 50
    return-wide v1

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v1

    .line 54
    :cond_0
    iget-object v0, p0, Lc4/I1;->J:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    const-wide/16 v1, -0x1

    .line 58
    .line 59
    const-wide/16 v3, 0x1

    .line 60
    .line 61
    :try_start_1
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    monitor-exit v0

    .line 69
    return-wide v1

    .line 70
    :catchall_1
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    throw v1
.end method

.method public final z0(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_15

    .line 5
    .line 6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->isHierarchical()Z

    .line 7
    .line 8
    .line 9
    move-result v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const-string v3, "sfmc_id"

    .line 11
    .line 12
    const-string v4, "srsltid"

    .line 13
    .line 14
    const-string v5, "dclid"

    .line 15
    .line 16
    const-string v6, "gbraid"

    .line 17
    .line 18
    const-string v7, "gclid"

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :try_start_1
    const-string v2, "utm_campaign"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v8, "utm_source"

    .line 29
    .line 30
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const-string v9, "utm_medium"

    .line 35
    .line 36
    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    const-string v12, "utm_id"

    .line 49
    .line 50
    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v15
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    move-object/from16 v2, p0

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_0
    move-object v2, v1

    .line 73
    move-object v8, v2

    .line 74
    move-object v9, v8

    .line 75
    move-object v10, v9

    .line 76
    move-object v11, v10

    .line 77
    move-object v12, v11

    .line 78
    move-object v13, v12

    .line 79
    move-object v14, v13

    .line 80
    move-object v15, v14

    .line 81
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    if-eqz v16, :cond_2

    .line 86
    .line 87
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v16

    .line 91
    if-eqz v16, :cond_2

    .line 92
    .line 93
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v16

    .line 97
    if-eqz v16, :cond_2

    .line 98
    .line 99
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v16

    .line 103
    if-eqz v16, :cond_2

    .line 104
    .line 105
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v16

    .line 109
    if-eqz v16, :cond_2

    .line 110
    .line 111
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v16

    .line 115
    if-eqz v16, :cond_2

    .line 116
    .line 117
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    if-eqz v16, :cond_2

    .line 122
    .line 123
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v16

    .line 127
    if-eqz v16, :cond_2

    .line 128
    .line 129
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    if-nez v16, :cond_1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    return-object v1

    .line 137
    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v16

    .line 146
    if-nez v16, :cond_3

    .line 147
    .line 148
    move-object/from16 v16, v3

    .line 149
    .line 150
    const-string v3, "campaign"

    .line 151
    .line 152
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_3
    move-object/from16 v16, v3

    .line 157
    .line 158
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-nez v2, :cond_4

    .line 163
    .line 164
    const-string v2, "source"

    .line 165
    .line 166
    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_5

    .line 174
    .line 175
    const-string v2, "medium"

    .line 176
    .line 177
    invoke-virtual {v1, v2, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_6

    .line 185
    .line 186
    invoke-virtual {v1, v7, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_7

    .line 194
    .line 195
    invoke-virtual {v1, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_7
    const-string v2, "gad_source"

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-nez v6, :cond_8

    .line 209
    .line 210
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_8
    const-string v2, "utm_term"

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_9

    .line 224
    .line 225
    const-string v3, "term"

    .line 226
    .line 227
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_9
    const-string v2, "utm_content"

    .line 231
    .line 232
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-nez v3, :cond_a

    .line 241
    .line 242
    const-string v3, "content"

    .line 243
    .line 244
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :cond_a
    const-string v2, "aclid"

    .line 248
    .line 249
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    if-nez v6, :cond_b

    .line 258
    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_b
    const-string v2, "cp1"

    .line 263
    .line 264
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-nez v6, :cond_c

    .line 273
    .line 274
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_c
    const-string v2, "anid"

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-nez v6, :cond_d

    .line 288
    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_d
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-nez v2, :cond_e

    .line 297
    .line 298
    const-string v2, "campaign_id"

    .line 299
    .line 300
    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-nez v2, :cond_f

    .line 308
    .line 309
    invoke-virtual {v1, v5, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    :cond_f
    const-string v2, "utm_source_platform"

    .line 313
    .line 314
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-nez v3, :cond_10

    .line 323
    .line 324
    const-string v3, "source_platform"

    .line 325
    .line 326
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_10
    const-string v2, "utm_creative_format"

    .line 330
    .line 331
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-nez v3, :cond_11

    .line 340
    .line 341
    const-string v3, "creative_format"

    .line 342
    .line 343
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :cond_11
    const-string v2, "utm_marketing_tactic"

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-nez v2, :cond_12

    .line 357
    .line 358
    const-string v2, "marketing_tactic"

    .line 359
    .line 360
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :cond_12
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-nez v0, :cond_13

    .line 368
    .line 369
    invoke-virtual {v1, v4, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_13
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-nez v0, :cond_14

    .line 377
    .line 378
    move-object/from16 v0, v16

    .line 379
    .line 380
    invoke-virtual {v1, v0, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_14
    return-object v1

    .line 384
    :goto_3
    iget-object v3, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast v3, Lc4/l0;

    .line 387
    .line 388
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 389
    .line 390
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 391
    .line 392
    .line 393
    const-string v4, "Install referrer url isn\'t a hierarchical URI"

    .line 394
    .line 395
    iget-object v3, v3, Lc4/T;->O:Lc4/Q;

    .line 396
    .line 397
    invoke-virtual {v3, v0, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    return-object v1

    .line 401
    :cond_15
    move-object/from16 v2, p0

    .line 402
    .line 403
    return-object v1
.end method
