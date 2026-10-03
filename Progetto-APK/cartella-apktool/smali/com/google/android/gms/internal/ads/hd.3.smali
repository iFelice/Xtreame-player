.class public final Lcom/google/android/gms/internal/ads/hd;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/hd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Ll3/b1;

.field public final H:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zc;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zc;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/hd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ll3/b1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hd;->G:Ll3/b1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hd;->H:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

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
    const/4 v1, 0x2

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hd;->G:Ll3/b1;

    .line 9
    .line 10
    invoke-static {p1, v1, v2, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x3

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hd;->H:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, p2, v1}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
