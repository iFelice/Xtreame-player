.class public final LZ3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ3/W;


# instance fields
.field public final G:LZ3/X;

.field public final H:LZ3/X;

.field public final I:LZ3/X;


# direct methods
.method public constructor <init>(LO1/J;LZ3/X;LZ3/X;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/h;->G:LZ3/X;

    .line 5
    .line 6
    iput-object p2, p0, LZ3/h;->H:LZ3/X;

    .line 7
    .line 8
    iput-object p3, p0, LZ3/h;->I:LZ3/X;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()LZ3/g;
    .locals 5

    .line 1
    iget-object v0, p0, LZ3/h;->G:LZ3/X;

    .line 2
    .line 3
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Application;

    .line 8
    .line 9
    iget-object v1, p0, LZ3/h;->H:LZ3/X;

    .line 10
    .line 11
    invoke-interface {v1}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, LZ3/i;

    .line 16
    .line 17
    iget-object v2, p0, LZ3/h;->I:LZ3/X;

    .line 18
    .line 19
    invoke-interface {v2}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, LZ3/c0;

    .line 24
    .line 25
    sget-object v3, LZ3/G;->b:LZ3/F;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->a0(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, LZ3/g;

    .line 31
    .line 32
    invoke-direct {v4, v0, v1, v2, v3}, LZ3/g;-><init>(Landroid/app/Application;LZ3/i;LZ3/c0;LZ3/F;)V

    .line 33
    .line 34
    .line 35
    return-object v4
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LZ3/h;->a()LZ3/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
