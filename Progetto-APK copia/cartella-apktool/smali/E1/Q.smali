.class public final LE1/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(LD0/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, LD0/g;->a:Z

    .line 5
    .line 6
    iput-boolean v0, p0, LE1/Q;->a:Z

    .line 7
    .line 8
    iget-boolean v0, p1, LD0/g;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, LE1/Q;->b:Z

    .line 11
    .line 12
    iget-boolean v0, p1, LD0/g;->c:Z

    .line 13
    .line 14
    iput-boolean v0, p0, LE1/Q;->c:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 20
    .line 21
    iput-object p1, p0, LE1/Q;->d:Landroid/os/Bundle;

    .line 22
    .line 23
    return-void
.end method
