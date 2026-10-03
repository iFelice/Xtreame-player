.class public final LJ3/u;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LJ3/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Z

.field public final I:Z

.field public final J:Landroid/content/Context;

.field public final K:Z

.field public final L:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJ3/v;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LJ3/v;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LJ3/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ3/u;->G:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, LJ3/u;->H:Z

    .line 7
    .line 8
    iput-boolean p3, p0, LJ3/u;->I:Z

    .line 9
    .line 10
    invoke-static {p4}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/content/Context;

    .line 19
    .line 20
    iput-object p1, p0, LJ3/u;->J:Landroid/content/Context;

    .line 21
    .line 22
    iput-boolean p5, p0, LJ3/u;->K:Z

    .line 23
    .line 24
    iput-boolean p6, p0, LJ3/u;->L:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

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
    iget-object v1, p0, LJ3/u;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-static {p1, v0, v1}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, LJ3/u;->H:Z

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    invoke-static {p1, v0, v1}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, LJ3/u;->I:Z

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, LR3/b;

    .line 33
    .line 34
    iget-object v2, p0, LJ3/u;->J:Landroid/content/Context;

    .line 35
    .line 36
    invoke-direct {v0, v2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1, v0}, Lf/b;->L(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x5

    .line 43
    invoke-static {p1, v0, v1}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 44
    .line 45
    .line 46
    iget-boolean v0, p0, LJ3/u;->K:Z

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-static {p1, v0, v1}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, LJ3/u;->L:Z

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
