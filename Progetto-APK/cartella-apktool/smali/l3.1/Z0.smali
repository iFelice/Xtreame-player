.class public final Ll3/Z0;
.super Ll3/y;
.source "SourceFile"


# instance fields
.field public final G:Lcom/google/android/gms/internal/measurement/p2;

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/p2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll3/y;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll3/Z0;->G:Lcom/google/android/gms/internal/measurement/p2;

    .line 5
    .line 6
    iput-object p2, p0, Ll3/Z0;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final I1(Ll3/z0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/Z0;->G:Lcom/google/android/gms/internal/measurement/p2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ll3/z0;->l()Lf3/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/p2;->h(Lf3/j;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll3/Z0;->G:Lcom/google/android/gms/internal/measurement/p2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ll3/Z0;->H:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/p2;->i(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
