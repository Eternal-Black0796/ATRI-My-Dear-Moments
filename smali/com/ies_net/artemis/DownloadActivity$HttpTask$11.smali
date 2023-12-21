.class Lcom/ies_net/artemis/DownloadActivity$HttpTask$11;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 283
    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$11;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$11;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    invoke-static {v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 288
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask$11;->this$1:Lcom/ies_net/artemis/DownloadActivity$HttpTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->access$602(Lcom/ies_net/artemis/DownloadActivity$HttpTask;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
