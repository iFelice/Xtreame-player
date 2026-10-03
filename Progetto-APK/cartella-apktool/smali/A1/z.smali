.class public final LA1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LA1/j;

.field public final b:Lp0/J;

.field public final c:Lp0/D;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(LA1/j;Lp0/J;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/z;->a:LA1/j;

    .line 5
    .line 6
    iput-object p2, p0, LA1/z;->b:Lp0/J;

    .line 7
    .line 8
    new-instance p1, Lp0/D;

    .line 9
    .line 10
    const/16 p2, 0x40

    .line 11
    .line 12
    new-array p2, p2, [B

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p1, p2, v0, v1}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, LA1/z;->c:Lp0/D;

    .line 20
    .line 21
    return-void
.end method
