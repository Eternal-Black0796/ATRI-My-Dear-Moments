.class Lcom/ies_net/artemis/DownloadActivity$HttpTask$1;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/DownloadActivity$HttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$1;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$1;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$402(Lcom/ies_net/artemis/DownloadActivity$HttpTask;I)I

    return-void
.end method
