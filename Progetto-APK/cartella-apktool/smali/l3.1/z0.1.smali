.class public final Ll3/z0;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ll3/z0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:I

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public J:Ll3/z0;

.field public K:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/a;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lc/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ll3/z0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ll3/z0;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ll3/z0;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Ll3/z0;->H:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Ll3/z0;->I:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Ll3/z0;->J:Ll3/z0;

    .line 11
    .line 12
    iput-object p5, p0, Ll3/z0;->K:Landroid/os/IBinder;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final i()LB0/w0;
    .locals 5

    .line 1
    iget-object v0, p0, Ll3/z0;->J:Ll3/z0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, LB0/w0;

    .line 8
    .line 9
    iget v2, v0, Ll3/z0;->G:I

    .line 10
    .line 11
    iget-object v3, v0, Ll3/z0;->H:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, v0, Ll3/z0;->I:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3, v0}, LB0/w0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v1

    .line 19
    :goto_0
    new-instance v1, LB0/w0;

    .line 20
    .line 21
    iget v2, p0, Ll3/z0;->G:I

    .line 22
    .line 23
    iget-object v3, p0, Ll3/z0;->H:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Ll3/z0;->I:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v1, v2, v3, v4, v0}, LB0/w0;-><init>(ILjava/lang/String;Ljava/lang/String;LB0/w0;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public final l()Lf3/j;
    .locals 11

    .line 1
    iget-object v0, p0, Ll3/z0;->J:Ll3/z0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v9, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, LB0/w0;

    .line 9
    .line 10
    iget-object v3, v0, Ll3/z0;->H:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, v0, Ll3/z0;->I:Ljava/lang/String;

    .line 13
    .line 14
    iget v0, v0, Ll3/z0;->G:I

    .line 15
    .line 16
    invoke-direct {v2, v0, v3, v4}, LB0/w0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v9, v2

    .line 20
    :goto_0
    new-instance v0, Lf3/j;

    .line 21
    .line 22
    iget-object v2, p0, Ll3/z0;->K:Landroid/os/IBinder;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    move-object v3, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const-string v3, "com.google.android.gms.ads.internal.client.IResponseInfo"

    .line 29
    .line 30
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    instance-of v4, v3, Ll3/x0;

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    check-cast v3, Ll3/x0;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    new-instance v3, Ll3/v0;

    .line 42
    .line 43
    invoke-direct {v3, v2}, Ll3/v0;-><init>(Landroid/os/IBinder;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    if-eqz v3, :cond_3

    .line 47
    .line 48
    new-instance v1, Lf3/p;

    .line 49
    .line 50
    invoke-direct {v1, v3}, Lf3/p;-><init>(Ll3/x0;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    move-object v10, v1

    .line 54
    iget-object v7, p0, Ll3/z0;->H:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v8, p0, Ll3/z0;->I:Ljava/lang/String;

    .line 57
    .line 58
    iget v6, p0, Ll3/z0;->G:I

    .line 59
    .line 60
    move-object v5, v0

    .line 61
    invoke-direct/range {v5 .. v10}, Lf3/j;-><init>(ILjava/lang/String;Ljava/lang/String;LB0/w0;Lf3/p;)V

    .line 62
    .line 63
    .line 64
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Ll3/z0;->G:I

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    iget-object v3, p0, Ll3/z0;->H:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    iget-object v3, p0, Ll3/z0;->I:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Ll3/z0;->J:Ll3/z0;

    .line 30
    .line 31
    invoke-static {p1, v2, v1, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x5

    .line 35
    iget-object v1, p0, Ll3/z0;->K:Landroid/os/IBinder;

    .line 36
    .line 37
    invoke-static {p1, p2, v1}, Lf/b;->L(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
