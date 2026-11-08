.class public final LZ3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ3/W;


# instance fields
.field public final G:LZ3/X;

.field public final H:LZ3/X;


# direct methods
.method public constructor <init>(LO1/J;LZ3/X;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/e0;->G:LZ3/X;

    .line 5
    .line 6
    iput-object p2, p0, LZ3/e0;->H:LZ3/X;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()LZ3/d0;
    .locals 3

    .line 1
    iget-object v0, p0, LZ3/e0;->G:LZ3/X;

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
    iget-object v1, p0, LZ3/e0;->H:LZ3/X;

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
    new-instance v2, LZ3/d0;

    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, LZ3/d0;-><init>(Landroid/app/Application;LZ3/i;)V

    .line 20
    .line 21
    .line 22
    return-object v2
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LZ3/e0;->a()LZ3/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
