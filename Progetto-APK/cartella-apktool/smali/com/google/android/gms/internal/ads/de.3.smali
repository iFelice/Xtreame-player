.class public final Lcom/google/android/gms/internal/ads/de;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/de;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ll3/d1;

.field public final J:Ll3/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zc;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zc;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/de;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ll3/d1;Ll3/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/de;->G:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/de;->H:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/de;->I:Ll3/d1;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/de;->J:Ll3/b1;

    .line 11
    .line 12
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
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/de;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/de;->H:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/de;->I:Ll3/d1;

    .line 21
    .line 22
    invoke-static {p1, v1, v2, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/de;->J:Ll3/b1;

    .line 27
    .line 28
    invoke-static {p1, v1, v2, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
