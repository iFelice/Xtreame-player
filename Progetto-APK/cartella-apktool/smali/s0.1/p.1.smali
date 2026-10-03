.class public final Ls0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/x;


# instance fields
.field public final a:Lm2/l;

.field public b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm2/l;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Lm2/l;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ls0/p;->a:Lm2/l;

    .line 11
    .line 12
    const/16 v0, 0x1f40

    .line 13
    .line 14
    iput v0, p0, Ls0/p;->c:I

    .line 15
    .line 16
    iput v0, p0, Ls0/p;->d:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ls0/i;
    .locals 7

    .line 1
    new-instance v6, Ls0/s;

    .line 2
    .line 3
    iget-object v1, p0, Ls0/p;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v4, p0, Ls0/p;->e:Z

    .line 6
    .line 7
    iget-object v5, p0, Ls0/p;->a:Lm2/l;

    .line 8
    .line 9
    iget v2, p0, Ls0/p;->c:I

    .line 10
    .line 11
    iget v3, p0, Ls0/p;->d:I

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Ls0/s;-><init>(Ljava/lang/String;IIZLm2/l;)V

    .line 15
    .line 16
    .line 17
    return-object v6
.end method
