.class public final LJ3/x;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LJ3/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:LJ3/p;

.field public final I:Z

.field public final J:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJ3/v;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, LJ3/v;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LJ3/x;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .locals 5

    .line 1
    const-string v0, "Could not unwrap certificate"

    .line 2
    .line 3
    const-string v1, "GoogleCertificatesQuery"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, LJ3/x;->G:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :try_start_0
    sget v2, Lcom/google/android/gms/common/internal/a0;->H:I

    .line 15
    .line 16
    const-string v2, "com.google.android.gms.common.internal.ICertData"

    .line 17
    .line 18
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Lcom/google/android/gms/common/internal/F;

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    check-cast v3, Lcom/google/android/gms/common/internal/F;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Lcom/google/android/gms/common/internal/Z;

    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    invoke-direct {v3, p2, v2, v4}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {v3}, Lcom/google/android/gms/common/internal/F;->zzd()LR3/a;

    .line 36
    .line 37
    .line 38
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    move-object p2, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-static {p2}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, [B

    .line 48
    .line 49
    :goto_1
    if-eqz p2, :cond_3

    .line 50
    .line 51
    new-instance p1, LJ3/q;

    .line 52
    .line 53
    invoke-direct {p1, p2}, LJ3/q;-><init>([B)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-exception p2

    .line 62
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_2
    iput-object p1, p0, LJ3/x;->H:LJ3/p;

    .line 66
    .line 67
    iput-boolean p3, p0, LJ3/x;->I:Z

    .line 68
    .line 69
    iput-boolean p4, p0, LJ3/x;->J:Z

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p2, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    iget-object v1, p0, LJ3/x;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, LJ3/x;->H:LJ3/p;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "GoogleCertificatesQuery"

    .line 18
    .line 19
    const-string v1, "certificate binder is null"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    invoke-static {p1, v1, v0}, Lf/b;->L(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-static {p1, v0, v1}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, LJ3/x;->I:Z

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1, v1}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, LJ3/x;->J:Z

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
