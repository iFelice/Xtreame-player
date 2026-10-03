.class public final Lcom/google/android/gms/internal/pal/m;
.super Lcom/google/android/gms/internal/pal/o;
.source "SourceFile"


# instance fields
.field public G:I

.field public final H:I

.field public final synthetic I:Lcom/google/android/gms/internal/pal/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/m;->I:Lcom/google/android/gms/internal/pal/r;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/pal/m;->G:I

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r;->i()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/pal/m;->H:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/pal/m;->G:I

    iget v1, p0, Lcom/google/android/gms/internal/pal/m;->H:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
