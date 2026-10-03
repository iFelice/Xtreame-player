.class public final LZ3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ3/W;


# instance fields
.field public final G:LZ3/X;

.field public final H:LZ3/X;

.field public final I:LZ3/X;


# direct methods
.method public constructor <init>(LZ3/X;LZ3/h;LZ3/X;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/a;->G:LZ3/X;

    .line 5
    .line 6
    iput-object p2, p0, LZ3/a;->H:LZ3/X;

    .line 7
    .line 8
    iput-object p3, p0, LZ3/a;->I:LZ3/X;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()LZ3/i0;
    .locals 4

    .line 1
    iget-object v0, p0, LZ3/a;->G:LZ3/X;

    .line 2
    .line 3
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LZ3/Z;

    .line 8
    .line 9
    iget-object v1, p0, LZ3/a;->H:LZ3/X;

    .line 10
    .line 11
    check-cast v1, LZ3/h;

    .line 12
    .line 13
    invoke-virtual {v1}, LZ3/h;->a()LZ3/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, LZ3/a;->I:LZ3/X;

    .line 18
    .line 19
    invoke-interface {v2}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, LZ3/i;

    .line 24
    .line 25
    new-instance v3, LZ3/i0;

    .line 26
    .line 27
    invoke-direct {v3, v0, v1, v2}, LZ3/i0;-><init>(LZ3/Z;LZ3/g;LZ3/i;)V

    .line 28
    .line 29
    .line 30
    return-object v3
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LZ3/a;->a()LZ3/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
