.class public final LZ3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ3/W;


# instance fields
.field public final G:LZ3/X;

.field public final H:LZ3/X;


# direct methods
.method public constructor <init>(LZ3/X;LZ3/X;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/t;->G:LZ3/X;

    .line 5
    .line 6
    iput-object p2, p0, LZ3/t;->H:LZ3/X;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, LZ3/t;->G:LZ3/X;

    .line 2
    .line 3
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LZ3/u;

    .line 8
    .line 9
    sget-object v1, LZ3/G;->a:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->a0(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, LZ3/t;->H:LZ3/X;

    .line 15
    .line 16
    check-cast v2, LZ3/x;

    .line 17
    .line 18
    invoke-virtual {v2}, LZ3/x;->a()LZ3/w;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, LZ3/s;

    .line 23
    .line 24
    invoke-direct {v3, v0, v1, v2}, LZ3/s;-><init>(LZ3/u;Landroid/os/Handler;LZ3/w;)V

    .line 25
    .line 26
    .line 27
    return-object v3
.end method
