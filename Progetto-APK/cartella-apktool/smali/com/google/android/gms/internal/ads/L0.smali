.class public final Lcom/google/android/gms/internal/ads/L0;
.super Lcom/google/android/gms/internal/ads/P0;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/L0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final H:Ljava/lang/String;

.field public final I:I

.field public final J:I

.field public final K:J

.field public final L:J

.field public final M:[Lcom/google/android/gms/internal/ads/P0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/E0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/E0;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/L0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/P0;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/L0;->H:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/L0;->I:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/L0;->J:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/L0;->K:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/L0;->L:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 8
    new-array v1, v0, [Lcom/google/android/gms/internal/ads/P0;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/L0;->M:[Lcom/google/android/gms/internal/ads/P0;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/L0;->M:[Lcom/google/android/gms/internal/ads/P0;

    const-class v3, Lcom/google/android/gms/internal/ads/P0;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/P0;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/google/android/gms/internal/ads/P0;)V
    .locals 1

    .line 10
    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/P0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L0;->H:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/L0;->I:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/L0;->J:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/L0;->K:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/L0;->L:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/L0;->M:[Lcom/google/android/gms/internal/ads/P0;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/gms/internal/ads/L0;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/L0;

    .line 18
    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/L0;->I:I

    .line 20
    .line 21
    iget v3, p1, Lcom/google/android/gms/internal/ads/L0;->I:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/ads/L0;->J:I

    .line 26
    .line 27
    iget v3, p1, Lcom/google/android/gms/internal/ads/L0;->J:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/L0;->K:J

    .line 32
    .line 33
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/L0;->K:J

    .line 34
    .line 35
    cmp-long v6, v2, v4

    .line 36
    .line 37
    if-nez v6, :cond_2

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/L0;->L:J

    .line 40
    .line 41
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/L0;->L:J

    .line 42
    .line 43
    cmp-long v6, v2, v4

    .line 44
    .line 45
    if-nez v6, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/L0;->H:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/L0;->H:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/L0;->M:[Lcom/google/android/gms/internal/ads/P0;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/L0;->M:[Lcom/google/android/gms/internal/ads/P0;

    .line 60
    .line 61
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    return v0

    .line 68
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/L0;->H:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/L0;->I:I

    .line 12
    .line 13
    add-int/lit16 v1, v1, 0x20f

    .line 14
    .line 15
    mul-int/lit8 v1, v1, 0x1f

    .line 16
    .line 17
    iget v2, p0, Lcom/google/android/gms/internal/ads/L0;->J:I

    .line 18
    .line 19
    add-int/2addr v1, v2

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/L0;->K:J

    .line 23
    .line 24
    long-to-int v3, v2

    .line 25
    add-int/2addr v1, v3

    .line 26
    mul-int/lit8 v1, v1, 0x1f

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/L0;->L:J

    .line 29
    .line 30
    long-to-int v3, v2

    .line 31
    add-int/2addr v1, v3

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    add-int/2addr v1, v0

    .line 35
    return v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/L0;->H:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/google/android/gms/internal/ads/L0;->I:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/google/android/gms/internal/ads/L0;->J:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/L0;->K:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/L0;->L:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/L0;->M:[Lcom/google/android/gms/internal/ads/P0;

    .line 27
    .line 28
    array-length v0, p2

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    array-length v0, p2

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-ge v2, v0, :cond_0

    .line 36
    .line 37
    aget-object v3, p2, v2

    .line 38
    .line 39
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
