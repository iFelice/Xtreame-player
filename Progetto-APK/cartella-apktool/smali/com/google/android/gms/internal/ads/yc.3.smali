.class public final Lcom/google/android/gms/internal/ads/yc;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/yc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Landroid/view/View;

.field public final H:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zc;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/view/View;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yc;->G:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {p2}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/util/Map;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yc;->H:Ljava/util/Map;

    .line 27
    .line 28
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
    new-instance v0, LR3/b;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yc;->G:Landroid/view/View;

    .line 10
    .line 11
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {p1, v1, v0}, Lf/b;->L(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, LR3/b;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yc;->H:Ljava/util/Map;

    .line 21
    .line 22
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-static {p1, v1, v0}, Lf/b;->L(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
