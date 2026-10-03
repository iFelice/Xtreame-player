.class public final LY/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:LY/s;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Le0/j;

.field public i:Le0/j;


# direct methods
.method public constructor <init>(ILY/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LY/Q;->a:I

    .line 3
    iput-object p2, p0, LY/Q;->b:LY/s;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, LY/Q;->c:Z

    .line 5
    sget-object p1, Le0/j;->K:Le0/j;

    iput-object p1, p0, LY/Q;->h:Le0/j;

    .line 6
    iput-object p1, p0, LY/Q;->i:Le0/j;

    return-void
.end method

.method public constructor <init>(ILY/s;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, LY/Q;->a:I

    .line 9
    iput-object p2, p0, LY/Q;->b:LY/s;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, LY/Q;->c:Z

    .line 11
    sget-object p1, Le0/j;->K:Le0/j;

    iput-object p1, p0, LY/Q;->h:Le0/j;

    .line 12
    iput-object p1, p0, LY/Q;->i:Le0/j;

    return-void
.end method
