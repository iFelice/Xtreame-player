.class public final LZ5/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/S;


# instance fields
.field public final a:LZ5/n;

.field public final b:Z


# direct methods
.method public constructor <init>(LZ5/G;LZ5/C;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LZ5/E;->b:Z

    .line 6
    .line 7
    iput-object p2, p0, LZ5/E;->a:LZ5/n;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LZ5/E;->b:Z

    .line 2
    .line 3
    const-string v1, "transportShutdown() must be called before transportTerminated()."

    .line 4
    .line 5
    invoke-static {v1, v0}, Ly4/k;->v(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public final c(LY5/c;)LY5/c;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
