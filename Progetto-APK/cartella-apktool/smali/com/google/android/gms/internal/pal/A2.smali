.class public final Lcom/google/android/gms/internal/pal/A2;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/pal/A2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:I

.field public H:Lcom/google/android/gms/internal/pal/m0;

.field public I:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/pal/z2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/z2;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/pal/A2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/pal/A2;->G:I

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/A2;->H:Lcom/google/android/gms/internal/pal/m0;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/A2;->I:[B

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/A2;->i()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/A2;->H:Lcom/google/android/gms/internal/pal/m0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/A2;->I:[B

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/A2;->I:[B

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_2
    return-void

    .line 19
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/A2;->I:[B

    .line 22
    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "Invalid internal representation - full"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/A2;->I:[B

    .line 37
    .line 38
    if-nez v0, :cond_6

    .line 39
    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v1, "Invalid internal representation - empty"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v1, "Impossible"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

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
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/pal/A2;->G:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/A2;->I:[B

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/A2;->H:Lcom/google/android/gms/internal/pal/m0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/j;->b()[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    const/4 v1, 0x2

    .line 29
    invoke-static {p1, v1, v0}, Lf/b;->K(Landroid/os/Parcel;I[B)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
